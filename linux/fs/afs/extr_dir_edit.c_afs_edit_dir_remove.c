
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int unique; int vnode; } ;
union afs_xdr_dirent {TYPE_1__ u; } ;
struct TYPE_7__ {int* alloc_ctrs; } ;
union afs_xdr_dir_block {TYPE_2__ meta; union afs_xdr_dirent* dirents; } ;
struct qstr {int name; scalar_t__ len; } ;
struct page {int dummy; } ;
struct afs_xdr_dir_page {union afs_xdr_dir_block* blocks; } ;
struct TYPE_8__ {int data_version; } ;
struct TYPE_9__ {int i_mapping; } ;
struct afs_vnode {int flags; TYPE_3__ status; TYPE_4__ vfs_inode; } ;
typedef unsigned int pgoff_t ;
typedef int loff_t ;
typedef enum afs_edit_dir_reason { ____Placeholder_afs_edit_dir_reason } afs_edit_dir_reason ;


 unsigned int AFS_DIR_BLOCKS_PER_PAGE ;
 unsigned int AFS_DIR_BLOCKS_WITH_CTR ;
 int AFS_DIR_BLOCK_SIZE ;
 unsigned int AFS_DIR_DIRENT_SIZE ;
 int AFS_DIR_MAX_BLOCKS ;
 int AFS_DIR_SLOTS_PER_BLOCK ;
 int AFS_VNODE_DIR_VALID ;
 int _debug (char*,int ,unsigned int,int) ;
 int _enter (char*,scalar_t__,int ) ;
 int _leave (char*) ;
 int afs_clear_contig_bits (union afs_xdr_dir_block*,int,unsigned int) ;
 int afs_dir_scan_block (union afs_xdr_dir_block*,struct qstr*,unsigned int) ;
 int afs_edit_dir_delete ;
 int afs_edit_dir_delete_error ;
 int afs_edit_dir_delete_inval ;
 int afs_edit_dir_delete_noent ;
 int afs_stat_v (struct afs_vnode*,int ) ;
 int clear_bit (int ,int *) ;
 struct page* find_lock_page (int ,unsigned int) ;
 int i_size_read (TYPE_4__*) ;
 int inode_set_iversion_raw (TYPE_4__*,int ) ;
 struct afs_xdr_dir_page* kmap (struct page*) ;
 int kunmap (struct page*) ;
 int memset (union afs_xdr_dirent*,int ,int) ;
 int n_dir_rm ;
 int ntohl (int ) ;
 int put_page (struct page*) ;
 unsigned int round_up (scalar_t__,unsigned int) ;
 int test_bit (int ,int *) ;
 int trace_afs_edit_dir (struct afs_vnode*,int,int ,unsigned int,int,int ,int ,int ) ;
 int unlock_page (struct page*) ;

void afs_edit_dir_remove(struct afs_vnode *vnode,
    struct qstr *name, enum afs_edit_dir_reason why)
{
 struct afs_xdr_dir_page *meta_page, *dir_page;
 union afs_xdr_dir_block *meta, *block;
 union afs_xdr_dirent *de;
 struct page *page0, *page;
 unsigned int need_slots, nr_blocks, b;
 pgoff_t index;
 loff_t i_size;
 int slot;

 _enter(",,{%d,%s},", name->len, name->name);

 i_size = i_size_read(&vnode->vfs_inode);
 if (i_size < AFS_DIR_BLOCK_SIZE ||
     i_size > AFS_DIR_BLOCK_SIZE * AFS_DIR_MAX_BLOCKS ||
     (i_size & (AFS_DIR_BLOCK_SIZE - 1))) {
  clear_bit(AFS_VNODE_DIR_VALID, &vnode->flags);
  return;
 }
 nr_blocks = i_size / AFS_DIR_BLOCK_SIZE;

 page0 = find_lock_page(vnode->vfs_inode.i_mapping, 0);
 if (!page0) {
  clear_bit(AFS_VNODE_DIR_VALID, &vnode->flags);
  _leave(" [fgp]");
  return;
 }


 need_slots = round_up(12 + name->len + 1 + 4, AFS_DIR_DIRENT_SIZE);
 need_slots /= AFS_DIR_DIRENT_SIZE;

 meta_page = kmap(page0);
 meta = &meta_page->blocks[0];




 for (b = 0; b < nr_blocks; b++) {
  index = b / AFS_DIR_BLOCKS_PER_PAGE;
  if (index != 0) {
   page = find_lock_page(vnode->vfs_inode.i_mapping, index);
   if (!page)
    goto error;
   dir_page = kmap(page);
  } else {
   page = page0;
   dir_page = meta_page;
  }


  if (!test_bit(AFS_VNODE_DIR_VALID, &vnode->flags))
   goto invalidated;

  block = &dir_page->blocks[b % AFS_DIR_BLOCKS_PER_PAGE];

  if (b > AFS_DIR_BLOCKS_WITH_CTR ||
      meta->meta.alloc_ctrs[b] <= AFS_DIR_SLOTS_PER_BLOCK - 1 - need_slots) {
   slot = afs_dir_scan_block(block, name, b);
   if (slot >= 0)
    goto found_dirent;
  }

  if (page != page0) {
   unlock_page(page);
   kunmap(page);
   put_page(page);
  }
 }


 trace_afs_edit_dir(vnode, why, afs_edit_dir_delete_noent,
      0, 0, 0, 0, name->name);
 clear_bit(AFS_VNODE_DIR_VALID, &vnode->flags);
 goto out_unmap;

found_dirent:
 de = &block->dirents[slot];

 trace_afs_edit_dir(vnode, why, afs_edit_dir_delete, b, slot,
      ntohl(de->u.vnode), ntohl(de->u.unique),
      name->name);

 memset(de, 0, sizeof(*de) * need_slots);


 afs_clear_contig_bits(block, slot, need_slots);
 if (page != page0) {
  unlock_page(page);
  kunmap(page);
  put_page(page);
 }


 if (b < AFS_DIR_BLOCKS_WITH_CTR)
  meta->meta.alloc_ctrs[b] += need_slots;

 inode_set_iversion_raw(&vnode->vfs_inode, vnode->status.data_version);
 afs_stat_v(vnode, n_dir_rm);
 _debug("Remove %s from %u[%u]", name->name, b, slot);

out_unmap:
 unlock_page(page0);
 kunmap(page0);
 put_page(page0);
 _leave("");
 return;

invalidated:
 trace_afs_edit_dir(vnode, why, afs_edit_dir_delete_inval,
      0, 0, 0, 0, name->name);
 clear_bit(AFS_VNODE_DIR_VALID, &vnode->flags);
 if (page != page0) {
  unlock_page(page);
  kunmap(page);
  put_page(page);
 }
 goto out_unmap;

error:
 trace_afs_edit_dir(vnode, why, afs_edit_dir_delete_error,
      0, 0, 0, 0, name->name);
 clear_bit(AFS_VNODE_DIR_VALID, &vnode->flags);
 goto out_unmap;
}
