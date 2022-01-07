
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct btrfs_fs_info* s_fs_info; } ;
struct btrfs_fs_info {int dummy; } ;



__attribute__((used)) static inline struct btrfs_fs_info *btrfs_sb(struct super_block *sb)
{
 return sb->s_fs_info;
}
