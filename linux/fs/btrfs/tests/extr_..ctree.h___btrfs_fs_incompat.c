
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {struct btrfs_super_block* super_copy; } ;


 int btrfs_super_incompat_flags (struct btrfs_super_block*) ;

__attribute__((used)) static inline bool __btrfs_fs_incompat(struct btrfs_fs_info *fs_info, u64 flag)
{
 struct btrfs_super_block *disk_super;
 disk_super = fs_info->super_copy;
 return !!(btrfs_super_incompat_flags(disk_super) & flag);
}
