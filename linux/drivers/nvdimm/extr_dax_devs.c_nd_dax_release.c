
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int dax_ida; } ;
struct nd_pfn {struct nd_dax* uuid; int id; int ndns; } ;
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int parent; } ;


 int dev_dbg (struct device*,char*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct nd_dax*) ;
 int nd_detach_ndns (struct device*,int *) ;
 struct nd_dax* to_nd_dax (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static void nd_dax_release(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 struct nd_dax *nd_dax = to_nd_dax(dev);
 struct nd_pfn *nd_pfn = &nd_dax->nd_pfn;

 dev_dbg(dev, "trace\n");
 nd_detach_ndns(dev, &nd_pfn->ndns);
 ida_simple_remove(&nd_region->dax_ida, nd_pfn->id);
 kfree(nd_pfn->uuid);
 kfree(nd_dax);
}
