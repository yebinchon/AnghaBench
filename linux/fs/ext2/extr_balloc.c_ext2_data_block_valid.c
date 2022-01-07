
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ext2_sb_info {unsigned int s_sb_block; TYPE_1__* s_es; } ;
typedef unsigned int ext2_fsblk_t ;
struct TYPE_2__ {int s_blocks_count; int s_first_data_block; } ;


 unsigned int le32_to_cpu (int ) ;

int ext2_data_block_valid(struct ext2_sb_info *sbi, ext2_fsblk_t start_blk,
     unsigned int count)
{
 if ((start_blk <= le32_to_cpu(sbi->s_es->s_first_data_block)) ||
     (start_blk + count - 1 < start_blk) ||
     (start_blk + count - 1 >= le32_to_cpu(sbi->s_es->s_blocks_count)))
  return 0;


 if ((start_blk <= sbi->s_sb_block) &&
     (start_blk + count - 1 >= sbi->s_sb_block))
  return 0;

 return 1;
}
