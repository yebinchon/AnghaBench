
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
typedef scalar_t__ const u32 ;



__attribute__((used)) static u8 bq24257_find_idx(u32 value, const u32 *map, u8 map_size)
{
 u8 idx;

 for (idx = 1; idx < map_size; idx++)
  if (value < map[idx])
   break;

 return idx - 1;
}
