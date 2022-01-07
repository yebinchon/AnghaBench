
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_lookup {int type; } ;


 int BTRFS_BLOCK_GROUP_RAID5 ;
 int BTRFS_BLOCK_GROUP_RAID6 ;

__attribute__((used)) static inline int nr_parity_stripes(const struct map_lookup *map)
{
 if (map->type & BTRFS_BLOCK_GROUP_RAID5)
  return 1;
 else if (map->type & BTRFS_BLOCK_GROUP_RAID6)
  return 2;
 else
  return 0;
}
