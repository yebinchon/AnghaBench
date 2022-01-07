
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_block_group_cache {int lock; int disk_cache_state; int io_list; } ;
struct TYPE_5__ {struct btrfs_root* root; } ;
struct TYPE_4__ {int cache_write_mutex; } ;


 int BTRFS_DC_CLEAR ;
 int BTRFS_EXTENT_DATA_KEY ;
 TYPE_2__* BTRFS_I (struct inode*) ;
 int ENOMEM ;
 int btrfs_abort_transaction (struct btrfs_trans_handle*,int) ;
 struct btrfs_path* btrfs_alloc_path () ;
 int btrfs_free_path (struct btrfs_path*) ;
 int btrfs_i_size_write (TYPE_2__*,int ) ;
 int btrfs_put_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_truncate_inode_items (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int ,int ) ;
 int btrfs_update_inode (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ;
 int btrfs_wait_cache_io (struct btrfs_trans_handle*,struct btrfs_block_group_cache*,struct btrfs_path*) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int truncate_pagecache (struct inode*,int ) ;

int btrfs_truncate_free_space_cache(struct btrfs_trans_handle *trans,
        struct btrfs_block_group_cache *block_group,
        struct inode *inode)
{
 struct btrfs_root *root = BTRFS_I(inode)->root;
 int ret = 0;
 bool locked = 0;

 if (block_group) {
  struct btrfs_path *path = btrfs_alloc_path();

  if (!path) {
   ret = -ENOMEM;
   goto fail;
  }
  locked = 1;
  mutex_lock(&trans->transaction->cache_write_mutex);
  if (!list_empty(&block_group->io_list)) {
   list_del_init(&block_group->io_list);

   btrfs_wait_cache_io(trans, block_group, path);
   btrfs_put_block_group(block_group);
  }





  spin_lock(&block_group->lock);
  block_group->disk_cache_state = BTRFS_DC_CLEAR;
  spin_unlock(&block_group->lock);
  btrfs_free_path(path);
 }

 btrfs_i_size_write(BTRFS_I(inode), 0);
 truncate_pagecache(inode, 0);





 ret = btrfs_truncate_inode_items(trans, root, inode,
      0, BTRFS_EXTENT_DATA_KEY);
 if (ret)
  goto fail;

 ret = btrfs_update_inode(trans, root, inode);

fail:
 if (locked)
  mutex_unlock(&trans->transaction->cache_write_mutex);
 if (ret)
  btrfs_abort_transaction(trans, ret);

 return ret;
}
