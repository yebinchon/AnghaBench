
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rmem_assigned_device {int list; struct reserved_mem* rmem; struct device* dev; } ;
struct reserved_mem {int name; TYPE_1__* ops; } ;
struct device_node {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* device_init ) (struct reserved_mem*,struct device*) ;} ;


 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct reserved_mem* __find_rmem (struct device_node*) ;
 int dev_info (struct device*,char*,int ) ;
 int kfree (struct rmem_assigned_device*) ;
 struct rmem_assigned_device* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int of_device_is_available (struct device_node*) ;
 int of_node_put (struct device_node*) ;
 struct device_node* of_parse_phandle (struct device_node*,char*,int) ;
 int of_rmem_assigned_device_list ;
 int of_rmem_assigned_device_mutex ;
 int stub1 (struct reserved_mem*,struct device*) ;

int of_reserved_mem_device_init_by_idx(struct device *dev,
           struct device_node *np, int idx)
{
 struct rmem_assigned_device *rd;
 struct device_node *target;
 struct reserved_mem *rmem;
 int ret;

 if (!np || !dev)
  return -EINVAL;

 target = of_parse_phandle(np, "memory-region", idx);
 if (!target)
  return -ENODEV;

 if (!of_device_is_available(target)) {
  of_node_put(target);
  return 0;
 }

 rmem = __find_rmem(target);
 of_node_put(target);

 if (!rmem || !rmem->ops || !rmem->ops->device_init)
  return -EINVAL;

 rd = kmalloc(sizeof(struct rmem_assigned_device), GFP_KERNEL);
 if (!rd)
  return -ENOMEM;

 ret = rmem->ops->device_init(rmem, dev);
 if (ret == 0) {
  rd->dev = dev;
  rd->rmem = rmem;

  mutex_lock(&of_rmem_assigned_device_mutex);
  list_add(&rd->list, &of_rmem_assigned_device_list);
  mutex_unlock(&of_rmem_assigned_device_mutex);

  dev_info(dev, "assigned reserved memory node %s\n", rmem->name);
 } else {
  kfree(rd);
 }

 return ret;
}
