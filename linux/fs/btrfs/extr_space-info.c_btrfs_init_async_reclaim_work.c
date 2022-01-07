
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int INIT_WORK (struct work_struct*,int ) ;
 int btrfs_async_reclaim_metadata_space ;

void btrfs_init_async_reclaim_work(struct work_struct *work)
{
 INIT_WORK(work, btrfs_async_reclaim_metadata_space);
}
