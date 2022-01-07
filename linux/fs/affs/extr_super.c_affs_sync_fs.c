
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;


 int affs_commit_super (struct super_block*,int) ;

__attribute__((used)) static int
affs_sync_fs(struct super_block *sb, int wait)
{
 affs_commit_super(sb, wait);
 return 0;
}
