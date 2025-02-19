
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int BTRFS_BLOCK_GROUP_RAID56_MASK ;
 int RAID5_P_STRIPE ;
 int RAID6_Q_STRIPE ;

__attribute__((used)) static inline void scrub_stripe_index_and_offset(u64 logical, u64 map_type,
       u64 *raid_map,
       u64 mapped_length,
       int nstripes, int mirror,
       int *stripe_index,
       u64 *stripe_offset)
{
 int i;

 if (map_type & BTRFS_BLOCK_GROUP_RAID56_MASK) {

  for (i = 0; i < nstripes; i++) {
   if (raid_map[i] == RAID6_Q_STRIPE ||
       raid_map[i] == RAID5_P_STRIPE)
    continue;

   if (logical >= raid_map[i] &&
       logical < raid_map[i] + mapped_length)
    break;
  }

  *stripe_index = i;
  *stripe_offset = logical - raid_map[i];
 } else {

  *stripe_index = mirror;
  *stripe_offset = 0;
 }
}
