
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_fs_info {int dummy; } ;
struct __btrfs_workqueue {struct btrfs_fs_info* fs_info; } ;



struct btrfs_fs_info *
btrfs_workqueue_owner(const struct __btrfs_workqueue *wq)
{
 return wq->fs_info;
}
