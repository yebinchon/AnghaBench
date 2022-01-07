
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct ecryptfs_sb_info* s_fs_info; } ;
struct ecryptfs_sb_info {int dummy; } ;



__attribute__((used)) static inline void
ecryptfs_set_superblock_private(struct super_block *sb,
    struct ecryptfs_sb_info *sb_info)
{
 sb->s_fs_info = sb_info;
}
