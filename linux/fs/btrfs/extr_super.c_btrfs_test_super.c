
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_fs_info {scalar_t__ fs_devices; } ;


 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;

__attribute__((used)) static int btrfs_test_super(struct super_block *s, void *data)
{
 struct btrfs_fs_info *p = data;
 struct btrfs_fs_info *fs_info = btrfs_sb(s);

 return fs_info->fs_devices == p->fs_devices;
}
