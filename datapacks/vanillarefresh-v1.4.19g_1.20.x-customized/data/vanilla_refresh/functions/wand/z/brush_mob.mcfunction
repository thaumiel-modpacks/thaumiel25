
#execute unless score temp refresh_count matches -2147483648.. run function vanilla_refresh:wand/z/used

tag @s add refresh_usingbrush_mob

#execute positioned ~ ~1.62 ~ run particle electric_spark ~ ~ ~ 0 0 0 0 1 force @a[distance=..128]
scoreboard players add temp refresh_count 1
tag @e[distance=..2,type=!#vanilla_refresh:misc_brush,sort=nearest,limit=1,tag=!refresh_usingbrush_mob] add refresh_oh_ur_dead_like_bye_RIP
execute unless entity @e[distance=..2,type=!#vanilla_refresh:misc_brush,sort=nearest,limit=1,tag=refresh_oh_ur_dead_like_bye_RIP] positioned ^ ^ ^1 if block ^ ^ ^ #vanilla_refresh:permeable unless score temp refresh_count matches 128.. run function vanilla_refresh:wand/z/brush_mob
execute as @e[type=!#vanilla_refresh:misc_brush,tag=refresh_oh_ur_dead_like_bye_RIP] at @s run function vanilla_refresh:wand/z/brush_mob_poof

scoreboard players reset temp refresh_count

advancement revoke @s only vanilla_refresh:wand/brush_mob
tag @s remove refresh_usingbrush_mob