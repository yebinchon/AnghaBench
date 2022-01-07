
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_work {TYPE_1__* wq; } ;
struct btrfs_fs_info {int dummy; } ;
struct TYPE_2__ {struct btrfs_fs_info* fs_info; } ;



struct btrfs_fs_info *
btrfs_work_owner(const struct btrfs_work *work)
{
 return work->wq->fs_info;
}
