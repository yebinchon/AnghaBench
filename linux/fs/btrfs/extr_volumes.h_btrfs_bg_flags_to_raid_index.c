
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef enum btrfs_raid_types { ____Placeholder_btrfs_raid_types } btrfs_raid_types ;


 int BTRFS_BLOCK_GROUP_DUP ;
 int BTRFS_BLOCK_GROUP_RAID0 ;
 int BTRFS_BLOCK_GROUP_RAID1 ;
 int BTRFS_BLOCK_GROUP_RAID10 ;
 int BTRFS_BLOCK_GROUP_RAID5 ;
 int BTRFS_BLOCK_GROUP_RAID6 ;
 int BTRFS_RAID_DUP ;
 int BTRFS_RAID_RAID0 ;
 int BTRFS_RAID_RAID1 ;
 int BTRFS_RAID_RAID10 ;
 int BTRFS_RAID_RAID5 ;
 int BTRFS_RAID_RAID6 ;
 int BTRFS_RAID_SINGLE ;

__attribute__((used)) static inline enum btrfs_raid_types btrfs_bg_flags_to_raid_index(u64 flags)
{
 if (flags & BTRFS_BLOCK_GROUP_RAID10)
  return BTRFS_RAID_RAID10;
 else if (flags & BTRFS_BLOCK_GROUP_RAID1)
  return BTRFS_RAID_RAID1;
 else if (flags & BTRFS_BLOCK_GROUP_DUP)
  return BTRFS_RAID_DUP;
 else if (flags & BTRFS_BLOCK_GROUP_RAID0)
  return BTRFS_RAID_RAID0;
 else if (flags & BTRFS_BLOCK_GROUP_RAID5)
  return BTRFS_RAID_RAID5;
 else if (flags & BTRFS_BLOCK_GROUP_RAID6)
  return BTRFS_RAID_RAID6;

 return BTRFS_RAID_SINGLE;
}
