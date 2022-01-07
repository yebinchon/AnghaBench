
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct monitor_map {int sense; int vmode; } ;


 struct monitor_map* mac_monitors ;

int mac_map_monitor_sense(int sense)
{
    const struct monitor_map *map;

    for (map = mac_monitors; map->sense != -1; map++)
 if (map->sense == sense)
     break;
    return map->vmode;
}
