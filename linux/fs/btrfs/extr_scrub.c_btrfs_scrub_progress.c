
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct scrub_ctx {int stat; } ;
struct btrfs_scrub_progress {int dummy; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; } ;
struct btrfs_device {struct scrub_ctx* scrub_ctx; } ;
struct TYPE_2__ {int device_list_mutex; } ;


 int ENODEV ;
 int ENOTCONN ;
 struct btrfs_device* btrfs_find_device (TYPE_1__*,int ,int *,int *,int) ;
 int memcpy (struct btrfs_scrub_progress*,int *,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int btrfs_scrub_progress(struct btrfs_fs_info *fs_info, u64 devid,
    struct btrfs_scrub_progress *progress)
{
 struct btrfs_device *dev;
 struct scrub_ctx *sctx = ((void*)0);

 mutex_lock(&fs_info->fs_devices->device_list_mutex);
 dev = btrfs_find_device(fs_info->fs_devices, devid, ((void*)0), ((void*)0), 1);
 if (dev)
  sctx = dev->scrub_ctx;
 if (sctx)
  memcpy(progress, &sctx->stat, sizeof(*progress));
 mutex_unlock(&fs_info->fs_devices->device_list_mutex);

 return dev ? (sctx ? 0 : -ENOTCONN) : -ENODEV;
}
