
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct battery_property_map {char const* key; int value; } ;



__attribute__((used)) static const char *map_get_key(struct battery_property_map *map, int value,
    const char *def_key)
{
 while (map->key) {
  if (map->value == value)
   return map->key;
  map++;
 }

 return def_key;
}
