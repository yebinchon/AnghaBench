
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct TYPE_4__ {scalar_t__ devs_max; } ;
struct TYPE_3__ {scalar_t__ rw_devices; } ;


 size_t btrfs_bg_flags_to_raid_index (scalar_t__) ;
 TYPE_2__* btrfs_raid_array ;

__attribute__((used)) static u64 get_profile_num_devs(struct btrfs_fs_info *fs_info, u64 type)
{
 u64 num_dev;

 num_dev = btrfs_raid_array[btrfs_bg_flags_to_raid_index(type)].devs_max;
 if (!num_dev)
  num_dev = fs_info->fs_devices->rw_devices;

 return num_dev;
}
