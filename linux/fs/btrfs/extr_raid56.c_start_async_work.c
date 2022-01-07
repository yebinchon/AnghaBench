
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct btrfs_raid_bio {int work; TYPE_1__* fs_info; } ;
typedef int btrfs_func_t ;
struct TYPE_2__ {int rmw_workers; } ;


 int btrfs_init_work (int *,int ,int ,int *,int *) ;
 int btrfs_queue_work (int ,int *) ;
 int btrfs_rmw_helper ;

__attribute__((used)) static void start_async_work(struct btrfs_raid_bio *rbio, btrfs_func_t work_func)
{
 btrfs_init_work(&rbio->work, btrfs_rmw_helper, work_func, ((void*)0), ((void*)0));
 btrfs_queue_work(rbio->fs_info->rmw_workers, &rbio->work);
}
