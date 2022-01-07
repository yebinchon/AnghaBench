
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_fs_info {int dummy; } ;


 int __btrfs_free_reserved_extent (struct btrfs_fs_info*,int ,int ,int,int ) ;

int btrfs_free_and_pin_reserved_extent(struct btrfs_fs_info *fs_info,
           u64 start, u64 len)
{
 return __btrfs_free_reserved_extent(fs_info, start, len, 1, 0);
}
