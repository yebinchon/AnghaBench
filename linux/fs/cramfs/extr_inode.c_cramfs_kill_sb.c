
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {scalar_t__ s_bdev; scalar_t__ s_mtd; } ;
struct cramfs_sb_info {int mtd_point_size; } ;


 int CONFIG_CRAMFS_BLOCKDEV ;
 int CONFIG_CRAMFS_MTD ;
 struct cramfs_sb_info* CRAMFS_SB (struct super_block*) ;
 scalar_t__ IS_ENABLED (int ) ;
 int kfree (struct cramfs_sb_info*) ;
 int kill_block_super (struct super_block*) ;
 int kill_mtd_super (struct super_block*) ;
 int mtd_unpoint (scalar_t__,int ,int ) ;

__attribute__((used)) static void cramfs_kill_sb(struct super_block *sb)
{
 struct cramfs_sb_info *sbi = CRAMFS_SB(sb);

 if (IS_ENABLED(CONFIG_CRAMFS_MTD) && sb->s_mtd) {
  if (sbi && sbi->mtd_point_size)
   mtd_unpoint(sb->s_mtd, 0, sbi->mtd_point_size);
  kill_mtd_super(sb);
 } else if (IS_ENABLED(CONFIG_CRAMFS_BLOCKDEV) && sb->s_bdev) {
  kill_block_super(sb);
 }
 kfree(sbi);
}
