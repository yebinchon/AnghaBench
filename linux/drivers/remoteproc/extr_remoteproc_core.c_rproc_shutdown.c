
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {int lock; int * table_ptr; int * cached_table; int power; int name; struct device dev; } ;


 int atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int dev_err (struct device*,char*,int ,int) ;
 int kfree (int *) ;
 int mutex_lock_interruptible (int *) ;
 int mutex_unlock (int *) ;
 int rproc_disable_iommu (struct rproc*) ;
 int rproc_resource_cleanup (struct rproc*) ;
 int rproc_stop (struct rproc*,int) ;

void rproc_shutdown(struct rproc *rproc)
{
 struct device *dev = &rproc->dev;
 int ret;

 ret = mutex_lock_interruptible(&rproc->lock);
 if (ret) {
  dev_err(dev, "can't lock rproc %s: %d\n", rproc->name, ret);
  return;
 }


 if (!atomic_dec_and_test(&rproc->power))
  goto out;

 ret = rproc_stop(rproc, 0);
 if (ret) {
  atomic_inc(&rproc->power);
  goto out;
 }


 rproc_resource_cleanup(rproc);

 rproc_disable_iommu(rproc);


 kfree(rproc->cached_table);
 rproc->cached_table = ((void*)0);
 rproc->table_ptr = ((void*)0);
out:
 mutex_unlock(&rproc->lock);
}
