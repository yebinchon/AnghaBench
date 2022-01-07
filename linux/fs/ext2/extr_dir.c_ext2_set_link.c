
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct inode {int i_ctime; int i_mtime; int i_ino; } ;
struct ext2_dir_entry_2 {int inode; int rec_len; } ;
typedef int loff_t ;
struct TYPE_2__ {int i_flags; } ;


 int BUG_ON (int) ;
 int EXT2_BTREE_FL ;
 TYPE_1__* EXT2_I (struct inode*) ;
 int cpu_to_le32 (int ) ;
 int current_time (struct inode*) ;
 int ext2_commit_chunk (struct page*,int,unsigned int) ;
 int ext2_prepare_chunk (struct page*,int,unsigned int) ;
 int ext2_put_page (struct page*) ;
 unsigned int ext2_rec_len_from_disk (int ) ;
 int ext2_set_de_type (struct ext2_dir_entry_2*,struct inode*) ;
 int lock_page (struct page*) ;
 int mark_inode_dirty (struct inode*) ;
 scalar_t__ page_address (struct page*) ;
 int page_offset (struct page*) ;

void ext2_set_link(struct inode *dir, struct ext2_dir_entry_2 *de,
     struct page *page, struct inode *inode, int update_times)
{
 loff_t pos = page_offset(page) +
   (char *) de - (char *) page_address(page);
 unsigned len = ext2_rec_len_from_disk(de->rec_len);
 int err;

 lock_page(page);
 err = ext2_prepare_chunk(page, pos, len);
 BUG_ON(err);
 de->inode = cpu_to_le32(inode->i_ino);
 ext2_set_de_type(de, inode);
 err = ext2_commit_chunk(page, pos, len);
 ext2_put_page(page);
 if (update_times)
  dir->i_mtime = dir->i_ctime = current_time(dir);
 EXT2_I(dir)->i_flags &= ~EXT2_BTREE_FL;
 mark_inode_dirty(dir);
}
