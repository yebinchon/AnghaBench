
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct autofs_sb_info {int oz_pgrp; } ;


 int autofs_catatonic_mode (struct autofs_sb_info*) ;
 struct autofs_sb_info* autofs_sbi (struct super_block*) ;
 int kfree_rcu (struct autofs_sb_info*,int ) ;
 int kill_litter_super (struct super_block*) ;
 int pr_debug (char*) ;
 int put_pid (int ) ;
 int rcu ;

void autofs_kill_sb(struct super_block *sb)
{
 struct autofs_sb_info *sbi = autofs_sbi(sb);







 if (sbi) {

  autofs_catatonic_mode(sbi);
  put_pid(sbi->oz_pgrp);
 }

 pr_debug("shutting down\n");
 kill_litter_super(sb);
 if (sbi)
  kfree_rcu(sbi, rcu);
}
