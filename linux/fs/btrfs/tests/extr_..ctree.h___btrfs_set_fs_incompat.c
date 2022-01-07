
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct btrfs_super_block {int dummy; } ;
struct btrfs_fs_info {int super_lock; struct btrfs_super_block* super_copy; } ;


 int btrfs_info (struct btrfs_fs_info*,char*,char const*,int) ;
 int btrfs_set_super_incompat_flags (struct btrfs_super_block*,int) ;
 int btrfs_super_incompat_flags (struct btrfs_super_block*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void __btrfs_set_fs_incompat(struct btrfs_fs_info *fs_info,
        u64 flag, const char* name)
{
 struct btrfs_super_block *disk_super;
 u64 features;

 disk_super = fs_info->super_copy;
 features = btrfs_super_incompat_flags(disk_super);
 if (!(features & flag)) {
  spin_lock(&fs_info->super_lock);
  features = btrfs_super_incompat_flags(disk_super);
  if (!(features & flag)) {
   features |= flag;
   btrfs_set_super_incompat_flags(disk_super, features);
   btrfs_info(fs_info,
    "setting incompat feature flag for %s (0x%llx)",
    name, flag);
  }
  spin_unlock(&fs_info->super_lock);
 }
}
