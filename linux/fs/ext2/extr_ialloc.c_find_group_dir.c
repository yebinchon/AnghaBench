
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int dummy; } ;
struct ext2_group_desc {int bg_free_blocks_count; int bg_free_inodes_count; } ;
struct TYPE_2__ {int s_groups_count; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int ext2_count_free_inodes (struct super_block*) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,int *) ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int find_group_dir(struct super_block *sb, struct inode *parent)
{
 int ngroups = EXT2_SB(sb)->s_groups_count;
 int avefreei = ext2_count_free_inodes(sb) / ngroups;
 struct ext2_group_desc *desc, *best_desc = ((void*)0);
 int group, best_group = -1;

 for (group = 0; group < ngroups; group++) {
  desc = ext2_get_group_desc (sb, group, ((void*)0));
  if (!desc || !desc->bg_free_inodes_count)
   continue;
  if (le16_to_cpu(desc->bg_free_inodes_count) < avefreei)
   continue;
  if (!best_desc ||
      (le16_to_cpu(desc->bg_free_blocks_count) >
       le16_to_cpu(best_desc->bg_free_blocks_count))) {
   best_group = group;
   best_desc = desc;
  }
 }

 return best_group;
}
