
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_sb; scalar_t__ i_blocks; scalar_t__ i_size; int i_data; int i_nlink; } ;
struct ext2_block_alloc_info {int dummy; } ;
struct TYPE_2__ {struct ext2_block_alloc_info* i_block_alloc_info; int i_dtime; } ;


 TYPE_1__* EXT2_I (struct inode*) ;
 int __ext2_write_inode (struct inode*,int ) ;
 int clear_inode (struct inode*) ;
 int dquot_drop (struct inode*) ;
 int dquot_initialize (struct inode*) ;
 int ext2_discard_reservation (struct inode*) ;
 int ext2_free_inode (struct inode*) ;
 int ext2_truncate_blocks (struct inode*,int ) ;
 int ext2_xattr_delete_inode (struct inode*) ;
 int inode_needs_sync (struct inode*) ;
 int invalidate_inode_buffers (struct inode*) ;
 int is_bad_inode (struct inode*) ;
 int kfree (struct ext2_block_alloc_info*) ;
 int ktime_get_real_seconds () ;
 int mark_inode_dirty (struct inode*) ;
 int sb_end_intwrite (int ) ;
 int sb_start_intwrite (int ) ;
 int truncate_inode_pages_final (int *) ;
 scalar_t__ unlikely (struct ext2_block_alloc_info*) ;

void ext2_evict_inode(struct inode * inode)
{
 struct ext2_block_alloc_info *rsv;
 int want_delete = 0;

 if (!inode->i_nlink && !is_bad_inode(inode)) {
  want_delete = 1;
  dquot_initialize(inode);
 } else {
  dquot_drop(inode);
 }

 truncate_inode_pages_final(&inode->i_data);

 if (want_delete) {
  sb_start_intwrite(inode->i_sb);

  EXT2_I(inode)->i_dtime = ktime_get_real_seconds();
  mark_inode_dirty(inode);
  __ext2_write_inode(inode, inode_needs_sync(inode));

  inode->i_size = 0;
  if (inode->i_blocks)
   ext2_truncate_blocks(inode, 0);
  ext2_xattr_delete_inode(inode);
 }

 invalidate_inode_buffers(inode);
 clear_inode(inode);

 ext2_discard_reservation(inode);
 rsv = EXT2_I(inode)->i_block_alloc_info;
 EXT2_I(inode)->i_block_alloc_info = ((void*)0);
 if (unlikely(rsv))
  kfree(rsv);

 if (want_delete) {
  ext2_free_inode(inode);
  sb_end_intwrite(inode->i_sb);
 }
}
