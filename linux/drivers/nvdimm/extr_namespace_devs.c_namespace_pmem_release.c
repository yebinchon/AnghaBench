
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int ns_ida; } ;
struct nd_namespace_pmem {scalar_t__ id; struct nd_namespace_pmem* uuid; struct nd_namespace_pmem* alt_name; } ;
struct device {int parent; } ;


 int ida_simple_remove (int *,scalar_t__) ;
 int kfree (struct nd_namespace_pmem*) ;
 struct nd_namespace_pmem* to_nd_namespace_pmem (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static void namespace_pmem_release(struct device *dev)
{
 struct nd_namespace_pmem *nspm = to_nd_namespace_pmem(dev);
 struct nd_region *nd_region = to_nd_region(dev->parent);

 if (nspm->id >= 0)
  ida_simple_remove(&nd_region->ns_ida, nspm->id);
 kfree(nspm->alt_name);
 kfree(nspm->uuid);
 kfree(nspm);
}
