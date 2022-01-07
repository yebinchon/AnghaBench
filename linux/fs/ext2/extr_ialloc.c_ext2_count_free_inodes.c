
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_super_block {int dummy; } ;
struct ext2_group_desc {int bg_free_inodes_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_2__ {int s_groups_count; int s_freeinodes_counter; struct ext2_super_block* s_es; } ;


 int EXT2_INODES_PER_GROUP (struct super_block*) ;
 TYPE_1__* EXT2_SB (struct super_block*) ;
 int brelse (struct buffer_head*) ;
 unsigned int ext2_count_free (struct buffer_head*,int) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,int *) ;
 unsigned long le16_to_cpu (int ) ;
 scalar_t__ percpu_counter_read (int *) ;
 int printk (char*,unsigned long,unsigned long,unsigned long) ;
 struct buffer_head* read_inode_bitmap (struct super_block*,int) ;

unsigned long ext2_count_free_inodes (struct super_block * sb)
{
 struct ext2_group_desc *desc;
 unsigned long desc_count = 0;
 int i;
 for (i = 0; i < EXT2_SB(sb)->s_groups_count; i++) {
  desc = ext2_get_group_desc (sb, i, ((void*)0));
  if (!desc)
   continue;
  desc_count += le16_to_cpu(desc->bg_free_inodes_count);
 }
 return desc_count;

}
