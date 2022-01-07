
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct btrfs_fs_info {int caching_workers; int commit_root_sem; int caching_block_groups; } ;
struct btrfs_caching_control {int progress; int work; int list; int count; int wait; int mutex; struct btrfs_block_group_cache* block_group; } ;
struct TYPE_3__ {int objectid; int offset; } ;
struct btrfs_block_group_cache {scalar_t__ cached; int last_byte_to_unpin; int has_caching_ctl; int lock; struct btrfs_caching_control* caching_ctl; TYPE_2__* space_info; int item; TYPE_1__ key; struct btrfs_fs_info* fs_info; } ;
struct TYPE_4__ {int bytes_used; int lock; } ;


 scalar_t__ BTRFS_CACHE_FAST ;
 scalar_t__ BTRFS_CACHE_FINISHED ;
 scalar_t__ BTRFS_CACHE_NO ;
 void* BTRFS_CACHE_STARTED ;
 int DEFINE_WAIT (int ) ;
 int ENOMEM ;
 int GFP_NOFS ;
 int INIT_LIST_HEAD (int *) ;
 int SPACE_CACHE ;
 int TASK_UNINTERRUPTIBLE ;
 int WARN_ON (struct btrfs_caching_control*) ;
 int btrfs_block_group_used (int *) ;
 int btrfs_cache_helper ;
 int btrfs_free_excluded_extents (struct btrfs_block_group_cache*) ;
 int btrfs_get_block_group (struct btrfs_block_group_cache*) ;
 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_put_caching_control (struct btrfs_caching_control*) ;
 int btrfs_queue_work (int ,int *) ;
 scalar_t__ btrfs_should_fragment_free_space (struct btrfs_block_group_cache*) ;
 scalar_t__ btrfs_test_opt (struct btrfs_fs_info*,int ) ;
 int caching_thread ;
 int down_write (int *) ;
 int finish_wait (int *,int *) ;
 int fragment_free_space (struct btrfs_block_group_cache*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct btrfs_caching_control*) ;
 struct btrfs_caching_control* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int load_free_space_cache (struct btrfs_block_group_cache*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int prepare_to_wait (int *,int *,int ) ;
 int refcount_inc (int *) ;
 int refcount_set (int *,int) ;
 int schedule () ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int up_write (int *) ;
 int wait ;
 int wake_up (int *) ;

int btrfs_cache_block_group(struct btrfs_block_group_cache *cache,
       int load_cache_only)
{
 DEFINE_WAIT(wait);
 struct btrfs_fs_info *fs_info = cache->fs_info;
 struct btrfs_caching_control *caching_ctl;
 int ret = 0;

 caching_ctl = kzalloc(sizeof(*caching_ctl), GFP_NOFS);
 if (!caching_ctl)
  return -ENOMEM;

 INIT_LIST_HEAD(&caching_ctl->list);
 mutex_init(&caching_ctl->mutex);
 init_waitqueue_head(&caching_ctl->wait);
 caching_ctl->block_group = cache;
 caching_ctl->progress = cache->key.objectid;
 refcount_set(&caching_ctl->count, 1);
 btrfs_init_work(&caching_ctl->work, btrfs_cache_helper,
   caching_thread, ((void*)0), ((void*)0));

 spin_lock(&cache->lock);
 while (cache->cached == BTRFS_CACHE_FAST) {
  struct btrfs_caching_control *ctl;

  ctl = cache->caching_ctl;
  refcount_inc(&ctl->count);
  prepare_to_wait(&ctl->wait, &wait, TASK_UNINTERRUPTIBLE);
  spin_unlock(&cache->lock);

  schedule();

  finish_wait(&ctl->wait, &wait);
  btrfs_put_caching_control(ctl);
  spin_lock(&cache->lock);
 }

 if (cache->cached != BTRFS_CACHE_NO) {
  spin_unlock(&cache->lock);
  kfree(caching_ctl);
  return 0;
 }
 WARN_ON(cache->caching_ctl);
 cache->caching_ctl = caching_ctl;
 cache->cached = BTRFS_CACHE_FAST;
 spin_unlock(&cache->lock);

 if (btrfs_test_opt(fs_info, SPACE_CACHE)) {
  mutex_lock(&caching_ctl->mutex);
  ret = load_free_space_cache(cache);

  spin_lock(&cache->lock);
  if (ret == 1) {
   cache->caching_ctl = ((void*)0);
   cache->cached = BTRFS_CACHE_FINISHED;
   cache->last_byte_to_unpin = (u64)-1;
   caching_ctl->progress = (u64)-1;
  } else {
   if (load_cache_only) {
    cache->caching_ctl = ((void*)0);
    cache->cached = BTRFS_CACHE_NO;
   } else {
    cache->cached = BTRFS_CACHE_STARTED;
    cache->has_caching_ctl = 1;
   }
  }
  spin_unlock(&cache->lock);
  mutex_unlock(&caching_ctl->mutex);

  wake_up(&caching_ctl->wait);
  if (ret == 1) {
   btrfs_put_caching_control(caching_ctl);
   btrfs_free_excluded_extents(cache);
   return 0;
  }
 } else {




  spin_lock(&cache->lock);
  if (load_cache_only) {
   cache->caching_ctl = ((void*)0);
   cache->cached = BTRFS_CACHE_NO;
  } else {
   cache->cached = BTRFS_CACHE_STARTED;
   cache->has_caching_ctl = 1;
  }
  spin_unlock(&cache->lock);
  wake_up(&caching_ctl->wait);
 }

 if (load_cache_only) {
  btrfs_put_caching_control(caching_ctl);
  return 0;
 }

 down_write(&fs_info->commit_root_sem);
 refcount_inc(&caching_ctl->count);
 list_add_tail(&caching_ctl->list, &fs_info->caching_block_groups);
 up_write(&fs_info->commit_root_sem);

 btrfs_get_block_group(cache);

 btrfs_queue_work(fs_info->caching_workers, &caching_ctl->work);

 return ret;
}
