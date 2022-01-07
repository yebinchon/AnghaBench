
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int s_flags; } ;
struct inode {unsigned long i_ino; int i_mode; struct super_block* i_sb; } ;
struct ext2_super_block {int s_inodes_count; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_3__ {struct ext2_super_block* s_es; } ;


 unsigned long EXT2_FIRST_INO (struct super_block*) ;
 unsigned long EXT2_INODES_PER_GROUP (struct super_block*) ;
 TYPE_1__* EXT2_SB (struct super_block*) ;
 int SB_SYNCHRONOUS ;
 int S_ISDIR (int ) ;
 int brelse (struct buffer_head*) ;
 int dquot_drop (struct inode*) ;
 int dquot_free_inode (struct inode*) ;
 int ext2_clear_bit_atomic (int ,unsigned long,void*) ;
 int ext2_debug (char*,unsigned long) ;
 int ext2_error (struct super_block*,char*,char*,unsigned long) ;
 int ext2_release_inode (struct super_block*,unsigned long,int) ;
 unsigned long le32_to_cpu (int ) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 struct buffer_head* read_inode_bitmap (struct super_block*,unsigned long) ;
 int sb_bgl_lock (TYPE_1__*,unsigned long) ;
 int sync_dirty_buffer (struct buffer_head*) ;

void ext2_free_inode (struct inode * inode)
{
 struct super_block * sb = inode->i_sb;
 int is_directory;
 unsigned long ino;
 struct buffer_head *bitmap_bh;
 unsigned long block_group;
 unsigned long bit;
 struct ext2_super_block * es;

 ino = inode->i_ino;
 ext2_debug ("freeing inode %lu\n", ino);






 dquot_free_inode(inode);
 dquot_drop(inode);

 es = EXT2_SB(sb)->s_es;
 is_directory = S_ISDIR(inode->i_mode);

 if (ino < EXT2_FIRST_INO(sb) ||
     ino > le32_to_cpu(es->s_inodes_count)) {
  ext2_error (sb, "ext2_free_inode",
       "reserved or nonexistent inode %lu", ino);
  return;
 }
 block_group = (ino - 1) / EXT2_INODES_PER_GROUP(sb);
 bit = (ino - 1) % EXT2_INODES_PER_GROUP(sb);
 bitmap_bh = read_inode_bitmap(sb, block_group);
 if (!bitmap_bh)
  return;


 if (!ext2_clear_bit_atomic(sb_bgl_lock(EXT2_SB(sb), block_group),
    bit, (void *) bitmap_bh->b_data))
  ext2_error (sb, "ext2_free_inode",
         "bit already cleared for inode %lu", ino);
 else
  ext2_release_inode(sb, block_group, is_directory);
 mark_buffer_dirty(bitmap_bh);
 if (sb->s_flags & SB_SYNCHRONOUS)
  sync_dirty_buffer(bitmap_bh);

 brelse(bitmap_bh);
}
