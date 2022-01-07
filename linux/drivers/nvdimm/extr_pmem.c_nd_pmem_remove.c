
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmem_device {int * bb_state; } ;
struct device {int parent; } ;


 struct pmem_device* dev_get_drvdata (struct device*) ;
 scalar_t__ is_nd_btt (struct device*) ;
 int nvdimm_flush (int ,int *) ;
 int nvdimm_namespace_detach_btt (int ) ;
 int sysfs_put (int *) ;
 int to_nd_btt (struct device*) ;
 int to_nd_region (int ) ;

__attribute__((used)) static int nd_pmem_remove(struct device *dev)
{
 struct pmem_device *pmem = dev_get_drvdata(dev);

 if (is_nd_btt(dev))
  nvdimm_namespace_detach_btt(to_nd_btt(dev));
 else {




  sysfs_put(pmem->bb_state);
  pmem->bb_state = ((void*)0);
 }
 nvdimm_flush(to_nd_region(dev->parent), ((void*)0));

 return 0;
}
