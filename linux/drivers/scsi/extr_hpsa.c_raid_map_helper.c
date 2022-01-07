
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct raid_map_data {int data_disks_per_row; int layout_map_count; } ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static void raid_map_helper(struct raid_map_data *map,
  int offload_to_mirror, u32 *map_index, u32 *current_group)
{
 if (offload_to_mirror == 0) {

  *map_index %= le16_to_cpu(map->data_disks_per_row);
  return;
 }
 do {

  *current_group = *map_index /
   le16_to_cpu(map->data_disks_per_row);
  if (offload_to_mirror == *current_group)
   continue;
  if (*current_group < le16_to_cpu(map->layout_map_count) - 1) {

   *map_index += le16_to_cpu(map->data_disks_per_row);
   (*current_group)++;
  } else {

   *map_index %= le16_to_cpu(map->data_disks_per_row);
   *current_group = 0;
  }
 } while (offload_to_mirror != *current_group);
}
