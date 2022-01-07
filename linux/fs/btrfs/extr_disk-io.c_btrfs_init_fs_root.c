
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_subvolume_writers {int dummy; } ;
struct btrfs_root {scalar_t__ highest_objectid; int objectid_mutex; int anon_dev; int ino_cache_wait; int ino_cache_lock; struct btrfs_subvolume_writers* subv_writers; void* free_ino_ctl; void* free_ino_pinned; } ;


 int ASSERT (int) ;
 scalar_t__ BTRFS_LAST_FREE_OBJECTID ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_ERR (struct btrfs_subvolume_writers*) ;
 int PTR_ERR (struct btrfs_subvolume_writers*) ;
 struct btrfs_subvolume_writers* btrfs_alloc_subvolume_writers () ;
 int btrfs_find_highest_objectid (struct btrfs_root*,scalar_t__*) ;
 int btrfs_init_free_ino_ctl (struct btrfs_root*) ;
 int get_anon_bdev (int *) ;
 int init_waitqueue_head (int *) ;
 void* kzalloc (int,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;

int btrfs_init_fs_root(struct btrfs_root *root)
{
 int ret;
 struct btrfs_subvolume_writers *writers;

 root->free_ino_ctl = kzalloc(sizeof(*root->free_ino_ctl), GFP_NOFS);
 root->free_ino_pinned = kzalloc(sizeof(*root->free_ino_pinned),
     GFP_NOFS);
 if (!root->free_ino_pinned || !root->free_ino_ctl) {
  ret = -ENOMEM;
  goto fail;
 }

 writers = btrfs_alloc_subvolume_writers();
 if (IS_ERR(writers)) {
  ret = PTR_ERR(writers);
  goto fail;
 }
 root->subv_writers = writers;

 btrfs_init_free_ino_ctl(root);
 spin_lock_init(&root->ino_cache_lock);
 init_waitqueue_head(&root->ino_cache_wait);

 ret = get_anon_bdev(&root->anon_dev);
 if (ret)
  goto fail;

 mutex_lock(&root->objectid_mutex);
 ret = btrfs_find_highest_objectid(root,
     &root->highest_objectid);
 if (ret) {
  mutex_unlock(&root->objectid_mutex);
  goto fail;
 }

 ASSERT(root->highest_objectid <= BTRFS_LAST_FREE_OBJECTID);

 mutex_unlock(&root->objectid_mutex);

 return 0;
fail:

 return ret;
}
