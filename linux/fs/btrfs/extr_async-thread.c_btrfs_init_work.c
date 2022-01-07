
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfs_work {scalar_t__ flags; int ordered_list; int normal_work; void* ordered_free; void* ordered_func; void* func; } ;
typedef int btrfs_work_func_t ;
typedef void* btrfs_func_t ;


 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;

void btrfs_init_work(struct btrfs_work *work, btrfs_work_func_t uniq_func,
       btrfs_func_t func,
       btrfs_func_t ordered_func,
       btrfs_func_t ordered_free)
{
 work->func = func;
 work->ordered_func = ordered_func;
 work->ordered_free = ordered_free;
 INIT_WORK(&work->normal_work, uniq_func);
 INIT_LIST_HEAD(&work->ordered_list);
 work->flags = 0;
}
