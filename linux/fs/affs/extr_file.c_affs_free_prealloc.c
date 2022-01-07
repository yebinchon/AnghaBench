
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_ino; struct super_block* i_sb; } ;
struct TYPE_2__ {int i_lastalloc; scalar_t__ i_pa_cnt; } ;


 TYPE_1__* AFFS_I (struct inode*) ;
 int affs_free_block (struct super_block*,int ) ;
 int pr_debug (char*,int ) ;

void
affs_free_prealloc(struct inode *inode)
{
 struct super_block *sb = inode->i_sb;

 pr_debug("free_prealloc(ino=%lu)\n", inode->i_ino);

 while (AFFS_I(inode)->i_pa_cnt) {
  AFFS_I(inode)->i_pa_cnt--;
  affs_free_block(sb, ++AFFS_I(inode)->i_lastalloc);
 }
}
