
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gntdev_copy_batch {unsigned int nr_ops; int * status; TYPE_1__* ops; } ;
typedef scalar_t__ s16 ;
struct TYPE_2__ {scalar_t__ status; } ;


 int EFAULT ;
 scalar_t__ GNTST_okay ;
 scalar_t__ __get_user (scalar_t__,int ) ;
 scalar_t__ __put_user (scalar_t__,int ) ;
 int gntdev_put_pages (struct gntdev_copy_batch*) ;
 int gnttab_batch_copy (TYPE_1__*,unsigned int) ;

__attribute__((used)) static int gntdev_copy(struct gntdev_copy_batch *batch)
{
 unsigned int i;

 gnttab_batch_copy(batch->ops, batch->nr_ops);
 gntdev_put_pages(batch);





 for (i = 0; i < batch->nr_ops; i++) {
  s16 status = batch->ops[i].status;
  s16 old_status;

  if (status == GNTST_okay)
   continue;

  if (__get_user(old_status, batch->status[i]))
   return -EFAULT;

  if (old_status != GNTST_okay)
   continue;

  if (__put_user(status, batch->status[i]))
   return -EFAULT;
 }

 batch->nr_ops = 0;
 return 0;
}
