
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int * bb_state; int * dax_seed; int * pfn_seed; int * btt_seed; int * ns_seed; } ;
struct device {int dummy; } ;


 int child_unregister ;
 int dev_set_drvdata (struct device*,int *) ;
 int device_for_each_child (struct device*,int *,int ) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sysfs_put (int *) ;
 struct nd_region* to_nd_region (struct device*) ;

__attribute__((used)) static int nd_region_remove(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev);

 device_for_each_child(dev, ((void*)0), child_unregister);


 nvdimm_bus_lock(dev);
 nd_region->ns_seed = ((void*)0);
 nd_region->btt_seed = ((void*)0);
 nd_region->pfn_seed = ((void*)0);
 nd_region->dax_seed = ((void*)0);
 dev_set_drvdata(dev, ((void*)0));
 nvdimm_bus_unlock(dev);





 sysfs_put(nd_region->bb_state);
 nd_region->bb_state = ((void*)0);

 return 0;
}
