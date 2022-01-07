
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct affs_sb_info {int s_bmlock; struct affs_sb_info* s_prefix; int s_root_bh; } ;


 struct affs_sb_info* AFFS_SB (struct super_block*) ;
 int affs_brelse (int ) ;
 int affs_free_bitmap (struct super_block*) ;
 int kfree (struct affs_sb_info*) ;
 int kill_block_super (struct super_block*) ;
 int mutex_destroy (int *) ;

__attribute__((used)) static void affs_kill_sb(struct super_block *sb)
{
 struct affs_sb_info *sbi = AFFS_SB(sb);
 kill_block_super(sb);
 if (sbi) {
  affs_free_bitmap(sb);
  affs_brelse(sbi->s_root_bh);
  kfree(sbi->s_prefix);
  mutex_destroy(&sbi->s_bmlock);
  kfree(sbi);
 }
}
