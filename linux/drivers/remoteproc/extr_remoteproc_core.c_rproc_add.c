
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct rproc {int node; scalar_t__ auto_boot; int name; struct device dev; } ;


 int dev_info (struct device*,char*,int ) ;
 int device_add (struct device*) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int rproc_create_debug_dir (struct rproc*) ;
 int rproc_list ;
 int rproc_list_mutex ;
 int rproc_trigger_auto_boot (struct rproc*) ;

int rproc_add(struct rproc *rproc)
{
 struct device *dev = &rproc->dev;
 int ret;

 ret = device_add(dev);
 if (ret < 0)
  return ret;

 dev_info(dev, "%s is available\n", rproc->name);


 rproc_create_debug_dir(rproc);


 if (rproc->auto_boot) {
  ret = rproc_trigger_auto_boot(rproc);
  if (ret < 0)
   return ret;
 }


 mutex_lock(&rproc_list_mutex);
 list_add(&rproc->node, &rproc_list);
 mutex_unlock(&rproc_list_mutex);

 return 0;
}
