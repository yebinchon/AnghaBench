
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {struct afs_super_info* s_fs_info; } ;
struct afs_super_info {int dummy; } ;



__attribute__((used)) static inline struct afs_super_info *AFS_FS_S(struct super_block *sb)
{
 return sb->s_fs_info;
}
