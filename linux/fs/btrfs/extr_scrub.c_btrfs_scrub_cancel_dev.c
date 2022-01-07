
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scrub_ctx {int cancel_req; } ;
struct btrfs_fs_info {int scrub_lock; int scrub_pause_wait; } ;
struct btrfs_device {struct scrub_ctx* scrub_ctx; struct btrfs_fs_info* fs_info; } ;


 int ENOTCONN ;
 int atomic_inc (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int wait_event (int ,int ) ;

int btrfs_scrub_cancel_dev(struct btrfs_device *dev)
{
 struct btrfs_fs_info *fs_info = dev->fs_info;
 struct scrub_ctx *sctx;

 mutex_lock(&fs_info->scrub_lock);
 sctx = dev->scrub_ctx;
 if (!sctx) {
  mutex_unlock(&fs_info->scrub_lock);
  return -ENOTCONN;
 }
 atomic_inc(&sctx->cancel_req);
 while (dev->scrub_ctx) {
  mutex_unlock(&fs_info->scrub_lock);
  wait_event(fs_info->scrub_pause_wait,
      dev->scrub_ctx == ((void*)0));
  mutex_lock(&fs_info->scrub_lock);
 }
 mutex_unlock(&fs_info->scrub_lock);

 return 0;
}
