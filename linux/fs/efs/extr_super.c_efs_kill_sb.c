
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct efs_sb_info {int dummy; } ;


 struct efs_sb_info* SUPER_INFO (struct super_block*) ;
 int kfree (struct efs_sb_info*) ;
 int kill_block_super (struct super_block*) ;

__attribute__((used)) static void efs_kill_sb(struct super_block *s)
{
 struct efs_sb_info *sbi = SUPER_INFO(s);
 kill_block_super(s);
 kfree(sbi);
}
