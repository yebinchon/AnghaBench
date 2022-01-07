
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct ext2_group_desc {int bg_used_dirs_count; int bg_free_inodes_count; } ;
struct buffer_head {int dummy; } ;
struct TYPE_3__ {int s_dirs_counter; } ;


 TYPE_1__* EXT2_SB (struct super_block*) ;
 int ext2_error (struct super_block*,char*,char*,int) ;
 struct ext2_group_desc* ext2_get_group_desc (struct super_block*,int,struct buffer_head**) ;
 int le16_add_cpu (int *,int) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int percpu_counter_dec (int *) ;
 int sb_bgl_lock (TYPE_1__*,int) ;
 int spin_lock (int ) ;
 int spin_unlock (int ) ;

__attribute__((used)) static void ext2_release_inode(struct super_block *sb, int group, int dir)
{
 struct ext2_group_desc * desc;
 struct buffer_head *bh;

 desc = ext2_get_group_desc(sb, group, &bh);
 if (!desc) {
  ext2_error(sb, "ext2_release_inode",
   "can't get descriptor for group %d", group);
  return;
 }

 spin_lock(sb_bgl_lock(EXT2_SB(sb), group));
 le16_add_cpu(&desc->bg_free_inodes_count, 1);
 if (dir)
  le16_add_cpu(&desc->bg_used_dirs_count, -1);
 spin_unlock(sb_bgl_lock(EXT2_SB(sb), group));
 if (dir)
  percpu_counter_dec(&EXT2_SB(sb)->s_dirs_counter);
 mark_buffer_dirty(bh);
}
