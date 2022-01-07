
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_magic; int * s_fs_info; } ;
struct erofs_sb_info {int dummy; } ;


 struct erofs_sb_info* EROFS_SB (struct super_block*) ;
 scalar_t__ EROFS_SUPER_MAGIC ;
 int WARN_ON (int) ;
 int kfree (struct erofs_sb_info*) ;
 int kill_block_super (struct super_block*) ;

__attribute__((used)) static void erofs_kill_sb(struct super_block *sb)
{
 struct erofs_sb_info *sbi;

 WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);

 kill_block_super(sb);

 sbi = EROFS_SB(sb);
 if (!sbi)
  return;
 kfree(sbi);
 sb->s_fs_info = ((void*)0);
}
