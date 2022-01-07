
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {char const* raid_name; } ;


 int const BTRFS_NR_RAID_TYPES ;
 int btrfs_bg_flags_to_raid_index (int ) ;
 TYPE_1__* btrfs_raid_array ;

const char *btrfs_bg_type_to_raid_name(u64 flags)
{
 const int index = btrfs_bg_flags_to_raid_index(flags);

 if (index >= BTRFS_NR_RAID_TYPES)
  return ((void*)0);

 return btrfs_raid_array[index].raid_name;
}
