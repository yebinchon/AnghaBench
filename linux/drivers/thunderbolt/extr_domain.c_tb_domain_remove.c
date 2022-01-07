
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tb {int dev; int wq; int lock; int ctl; TYPE_1__* cm_ops; } ;
struct TYPE_2__ {int (* stop ) (struct tb*) ;} ;


 int device_unregister (int *) ;
 int flush_workqueue (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct tb*) ;
 int tb_ctl_stop (int ) ;

void tb_domain_remove(struct tb *tb)
{
 mutex_lock(&tb->lock);
 if (tb->cm_ops->stop)
  tb->cm_ops->stop(tb);

 tb_ctl_stop(tb->ctl);
 mutex_unlock(&tb->lock);

 flush_workqueue(tb->wq);
 device_unregister(&tb->dev);
}
