
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct inode {int dummy; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_trans_handle {int bytes_reserved; struct btrfs_block_rsv* block_rsv; int transid; } ;
struct TYPE_5__ {scalar_t__ objectid; } ;
struct btrfs_root {scalar_t__ ino_cache_state; int ino_cache_lock; int root_item; TYPE_1__ root_key; struct btrfs_free_space_ctl* free_ino_ctl; struct btrfs_fs_info* fs_info; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_rsv {int dummy; } ;
struct btrfs_fs_info {struct btrfs_block_rsv trans_block_rsv; } ;
struct btrfs_free_space_ctl {int free_extents; int total_bitmaps; int tree_lock; } ;
struct btrfs_free_space {int dummy; } ;
struct TYPE_6__ {scalar_t__ generation; } ;


 int ALIGN (int,int) ;
 scalar_t__ BTRFS_CACHE_FINISHED ;
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ;
 scalar_t__ BTRFS_FS_TREE_OBJECTID ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ;
 int BTRFS_RESERVE_NO_FLUSH ;
 int BUG_ON (int) ;
 int ENOENT ;
 int ENOMEM ;
 int ENOSPC ;
 int INODE_MAP_CACHE ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PAGE_SIZE ;
 int PTR_ERR (struct inode*) ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_block_rsv_add (struct btrfs_root*,struct btrfs_block_rsv*,int ,int ) ;
 int btrfs_block_rsv_release (struct btrfs_fs_info*,struct btrfs_block_rsv*,int ) ;
 int btrfs_calc_insert_metadata_size (struct btrfs_fs_info*,int) ;
 int btrfs_delalloc_release_extents (TYPE_2__*,int) ;
 int btrfs_delalloc_release_metadata (TYPE_2__*,int,int) ;
 int btrfs_delalloc_reserve_space (struct inode*,struct extent_changeset**,int ,int) ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_prealloc_file_range_trans (struct inode*,struct btrfs_trans_handle*,int ,int ,int,int,int,int *) ;
 scalar_t__ btrfs_root_refs (int *) ;
 int btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int btrfs_truncate_free_space_cache (struct btrfs_trans_handle*,int *,struct inode*) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int btrfs_write_out_ino_cache (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*,struct inode*) ;
 int create_free_ino_inode (struct btrfs_root*,struct btrfs_trans_handle*,struct btrfs_path*) ;
 int extent_changeset_free (struct extent_changeset*) ;
 scalar_t__ i_size_read (struct inode*) ;
 int iput (struct inode*) ;
 struct inode* lookup_free_ino_inode (struct btrfs_root*,struct btrfs_path*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int trace_btrfs_space_reservation (struct btrfs_fs_info*,char*,int ,int ,int) ;

int btrfs_save_ino_cache(struct btrfs_root *root,
    struct btrfs_trans_handle *trans)
{
 struct btrfs_fs_info *fs_info = root->fs_info;
 struct btrfs_free_space_ctl *ctl = root->free_ino_ctl;
 struct btrfs_path *path;
 struct inode *inode;
 struct btrfs_block_rsv *rsv;
 struct extent_changeset *data_reserved = ((void*)0);
 u64 num_bytes;
 u64 alloc_hint = 0;
 int ret;
 int prealloc;
 bool retry = 0;


 if (root->root_key.objectid != BTRFS_FS_TREE_OBJECTID &&
     (root->root_key.objectid < BTRFS_FIRST_FREE_OBJECTID ||
      root->root_key.objectid > BTRFS_LAST_FREE_OBJECTID))
  return 0;


 if (btrfs_root_refs(&root->root_item) == 0)
  return 0;

 if (!btrfs_test_opt(fs_info, INODE_MAP_CACHE))
  return 0;

 path = btrfs_alloc_path();
 if (!path)
  return -ENOMEM;

 rsv = trans->block_rsv;
 trans->block_rsv = &fs_info->trans_block_rsv;

 num_bytes = trans->bytes_reserved;







 trans->bytes_reserved = btrfs_calc_insert_metadata_size(fs_info, 10);
 ret = btrfs_block_rsv_add(root, trans->block_rsv,
      trans->bytes_reserved,
      BTRFS_RESERVE_NO_FLUSH);
 if (ret)
  goto out;
 trace_btrfs_space_reservation(fs_info, "ino_cache", trans->transid,
          trans->bytes_reserved, 1);
again:
 inode = lookup_free_ino_inode(root, path);
 if (IS_ERR(inode) && (PTR_ERR(inode) != -ENOENT || retry)) {
  ret = PTR_ERR(inode);
  goto out_release;
 }

 if (IS_ERR(inode)) {
  BUG_ON(retry);
  retry = 1;

  ret = create_free_ino_inode(root, trans, path);
  if (ret)
   goto out_release;
  goto again;
 }

 BTRFS_I(inode)->generation = 0;
 ret = btrfs_update_inode(trans, root, inode);
 if (ret) {
  btrfs_abort_transaction(trans, ret);
  goto out_put;
 }

 if (i_size_read(inode) > 0) {
  ret = btrfs_truncate_free_space_cache(trans, ((void*)0), inode);
  if (ret) {
   if (ret != -ENOSPC)
    btrfs_abort_transaction(trans, ret);
   goto out_put;
  }
 }

 spin_lock(&root->ino_cache_lock);
 if (root->ino_cache_state != BTRFS_CACHE_FINISHED) {
  ret = -1;
  spin_unlock(&root->ino_cache_lock);
  goto out_put;
 }
 spin_unlock(&root->ino_cache_lock);

 spin_lock(&ctl->tree_lock);
 prealloc = sizeof(struct btrfs_free_space) * ctl->free_extents;
 prealloc = ALIGN(prealloc, PAGE_SIZE);
 prealloc += ctl->total_bitmaps * PAGE_SIZE;
 spin_unlock(&ctl->tree_lock);


 prealloc += 8 * PAGE_SIZE;

 ret = btrfs_delalloc_reserve_space(inode, &data_reserved, 0, prealloc);
 if (ret)
  goto out_put;

 ret = btrfs_prealloc_file_range_trans(inode, trans, 0, 0, prealloc,
           prealloc, prealloc, &alloc_hint);
 if (ret) {
  btrfs_delalloc_release_extents(BTRFS_I(inode), prealloc);
  btrfs_delalloc_release_metadata(BTRFS_I(inode), prealloc, 1);
  goto out_put;
 }

 ret = btrfs_write_out_ino_cache(root, trans, path, inode);
 btrfs_delalloc_release_extents(BTRFS_I(inode), prealloc);
out_put:
 iput(inode);
out_release:
 trace_btrfs_space_reservation(fs_info, "ino_cache", trans->transid,
          trans->bytes_reserved, 0);
 btrfs_block_rsv_release(fs_info, trans->block_rsv,
    trans->bytes_reserved);
out:
 trans->block_rsv = rsv;
 trans->bytes_reserved = num_bytes;

 btrfs_free_path(path);
 extent_changeset_free(data_reserved);
 return ret;
}
