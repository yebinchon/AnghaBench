
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rproc {int dev; int node; int lock; int state; scalar_t__ auto_boot; } ;


 int EINVAL ;
 int RPROC_DELETED ;
 int device_del (int *) ;
 int list_del (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rproc_delete_debug_dir (struct rproc*) ;
 int rproc_list_mutex ;
 int rproc_shutdown (struct rproc*) ;

int rproc_del(struct rproc *rproc)
{
 if (!rproc)
  return -EINVAL;



 if (rproc->auto_boot)
  rproc_shutdown(rproc);

 mutex_lock(&rproc->lock);
 rproc->state = RPROC_DELETED;
 mutex_unlock(&rproc->lock);

 rproc_delete_debug_dir(rproc);


 mutex_lock(&rproc_list_mutex);
 list_del(&rproc->node);
 mutex_unlock(&rproc_list_mutex);

 device_del(&rproc->dev);

 return 0;
}
