
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct btrfs_fs_info {int flags; } ;


 int BTRFS_FS_FROZEN ;
 struct btrfs_fs_info* btrfs_sb (struct super_block*) ;
 int clear_bit (int ,int *) ;

__attribute__((used)) static int btrfs_unfreeze(struct super_block *sb)
{
 struct btrfs_fs_info *fs_info = btrfs_sb(sb);

 clear_bit(BTRFS_FS_FROZEN, &fs_info->flags);
 return 0;
}
