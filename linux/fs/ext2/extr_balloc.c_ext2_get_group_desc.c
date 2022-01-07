
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct ext2_sb_info {unsigned int s_groups_count; struct buffer_head** s_group_desc; } ;
struct ext2_group_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int EXT2_DESC_PER_BLOCK (struct super_block*) ;
 unsigned int EXT2_DESC_PER_BLOCK_BITS (struct super_block*) ;
 struct ext2_sb_info* EXT2_SB (struct super_block*) ;
 int ext2_error (struct super_block*,char*,char*,unsigned int,unsigned long,...) ;

struct ext2_group_desc * ext2_get_group_desc(struct super_block * sb,
          unsigned int block_group,
          struct buffer_head ** bh)
{
 unsigned long group_desc;
 unsigned long offset;
 struct ext2_group_desc * desc;
 struct ext2_sb_info *sbi = EXT2_SB(sb);

 if (block_group >= sbi->s_groups_count) {
  ext2_error (sb, "ext2_get_group_desc",
       "block_group >= groups_count - "
       "block_group = %d, groups_count = %lu",
       block_group, sbi->s_groups_count);

  return ((void*)0);
 }

 group_desc = block_group >> EXT2_DESC_PER_BLOCK_BITS(sb);
 offset = block_group & (EXT2_DESC_PER_BLOCK(sb) - 1);
 if (!sbi->s_group_desc[group_desc]) {
  ext2_error (sb, "ext2_get_group_desc",
       "Group descriptor not loaded - "
       "block_group = %d, group_desc = %lu, desc = %lu",
        block_group, group_desc, offset);
  return ((void*)0);
 }

 desc = (struct ext2_group_desc *) sbi->s_group_desc[group_desc]->b_data;
 if (bh)
  *bh = sbi->s_group_desc[group_desc];
 return desc + offset;
}
