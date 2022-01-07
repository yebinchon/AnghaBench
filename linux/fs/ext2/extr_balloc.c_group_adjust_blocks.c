
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext2_sb_info {int dummy; } ;
struct ext2_group_desc {int bg_free_blocks_count; } ;
struct buffer_head {int dummy; } ;


 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int cpu_to_le16 (unsigned int) ;
 unsigned int le16_to_cpu (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int sb_bgl_lock (struct ext2_sb_info*,int) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static void group_adjust_blocks(struct super_block *sb, int group_no,
 struct ext2_group_desc *desc, struct buffer_head *bh, int count)
{
 if (count) {
  struct ext2_sb_info *sbi = EXT2_SB(sb);
  unsigned free_blocks;

  spin_lock(sb_bgl_lock(sbi, group_no));
  free_blocks = le16_to_cpu(desc->bg_free_blocks_count);
  desc->bg_free_blocks_count = cpu_to_le16(free_blocks + count);
  spin_unlock(sb_bgl_lock(sbi, group_no));
  mark_buffer_dirty(bh);
 }
}
