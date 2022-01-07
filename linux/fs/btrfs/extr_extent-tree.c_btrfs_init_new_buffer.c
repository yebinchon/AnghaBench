
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct extent_buffer {scalar_t__ lock_owner; int log_index; scalar_t__ len; scalar_t__ start; int bflags; } ;
struct btrfs_trans_handle {int dirty; TYPE_3__* transaction; int transid; } ;
struct TYPE_6__ {scalar_t__ objectid; } ;
struct btrfs_root {int log_transid; int dirty_log_pages; TYPE_2__ root_key; struct btrfs_fs_info* fs_info; } ;
struct btrfs_header {int dummy; } ;
struct btrfs_fs_info {int chunk_tree_uuid; TYPE_1__* fs_devices; } ;
struct TYPE_8__ {scalar_t__ pid; } ;
struct TYPE_7__ {int dirty_pages; } ;
struct TYPE_5__ {int metadata_uuid; } ;


 int BTRFS_MIXED_BACKREF_REV ;
 scalar_t__ BTRFS_TREE_LOG_OBJECTID ;
 struct extent_buffer* ERR_PTR (int ) ;
 int EUCLEAN ;
 int EXTENT_BUFFER_STALE ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct extent_buffer*) ;
 int btrfs_clean_tree_block (struct extent_buffer*) ;
 int btrfs_err_rl (struct btrfs_fs_info*,char*,scalar_t__,int ,scalar_t__) ;
 struct extent_buffer* btrfs_find_create_tree_block (struct btrfs_fs_info*,int ) ;
 int btrfs_header_owner (struct extent_buffer*) ;
 int btrfs_set_buffer_lockdep_class (scalar_t__,struct extent_buffer*,int) ;
 int btrfs_set_header_backref_rev (struct extent_buffer*,int ) ;
 int btrfs_set_header_bytenr (struct extent_buffer*,scalar_t__) ;
 int btrfs_set_header_generation (struct extent_buffer*,int ) ;
 int btrfs_set_header_level (struct extent_buffer*,int) ;
 int btrfs_set_header_owner (struct extent_buffer*,int ) ;
 int btrfs_set_lock_blocking_write (struct extent_buffer*) ;
 int btrfs_tree_lock (struct extent_buffer*) ;
 int clear_bit (int ,int *) ;
 TYPE_4__* current ;
 int free_extent_buffer (struct extent_buffer*) ;
 int memzero_extent_buffer (struct extent_buffer*,int ,int) ;
 int set_extent_buffer_uptodate (struct extent_buffer*) ;
 int set_extent_dirty (int *,scalar_t__,scalar_t__,int ) ;
 int set_extent_new (int *,scalar_t__,scalar_t__) ;
 int write_extent_buffer_chunk_tree_uuid (struct extent_buffer*,int ) ;
 int write_extent_buffer_fsid (struct extent_buffer*,int ) ;

__attribute__((used)) static struct extent_buffer *
btrfs_init_new_buffer(struct btrfs_trans_handle *trans, struct btrfs_root *root,
        u64 bytenr, int level, u64 owner)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct extent_buffer *buf;

 buf = btrfs_find_create_tree_block(fs_info, bytenr);
 if (IS_ERR(buf))
  return buf;






 if (buf->lock_owner == current->pid) {
  btrfs_err_rl(fs_info,
"tree block %llu owner %llu already locked by pid=%d, extent tree corruption detected",
   buf->start, btrfs_header_owner(buf), current->pid);
  free_extent_buffer(buf);
  return ERR_PTR(-EUCLEAN);
 }

 btrfs_set_buffer_lockdep_class(root->root_key.objectid, buf, level);
 btrfs_tree_lock(buf);
 btrfs_clean_tree_block(buf);
 clear_bit(EXTENT_BUFFER_STALE, &buf->bflags);

 btrfs_set_lock_blocking_write(buf);
 set_extent_buffer_uptodate(buf);

 memzero_extent_buffer(buf, 0, sizeof(struct btrfs_header));
 btrfs_set_header_level(buf, level);
 btrfs_set_header_bytenr(buf, buf->start);
 btrfs_set_header_generation(buf, trans->transid);
 btrfs_set_header_backref_rev(buf, BTRFS_MIXED_BACKREF_REV);
 btrfs_set_header_owner(buf, owner);
 write_extent_buffer_fsid(buf, fs_info->fs_devices->metadata_uuid);
 write_extent_buffer_chunk_tree_uuid(buf, fs_info->chunk_tree_uuid);
 if (root->root_key.objectid == BTRFS_TREE_LOG_OBJECTID) {
  buf->log_index = root->log_transid % 2;




  if (buf->log_index == 0)
   set_extent_dirty(&root->dirty_log_pages, buf->start,
     buf->start + buf->len - 1, GFP_NOFS);
  else
   set_extent_new(&root->dirty_log_pages, buf->start,
     buf->start + buf->len - 1);
 } else {
  buf->log_index = -1;
  set_extent_dirty(&trans->transaction->dirty_pages, buf->start,
    buf->start + buf->len - 1, GFP_NOFS);
 }
 trans->dirty = 1;

 return buf;
}
