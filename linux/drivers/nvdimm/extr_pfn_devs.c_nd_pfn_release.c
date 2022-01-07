
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int pfn_ida; } ;
struct nd_pfn {struct nd_pfn* uuid; int id; int ndns; int dev; } ;
struct device {int parent; } ;


 int dev_dbg (struct device*,char*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct nd_pfn*) ;
 int nd_detach_ndns (int *,int *) ;
 struct nd_pfn* to_nd_pfn (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static void nd_pfn_release(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 struct nd_pfn *nd_pfn = to_nd_pfn(dev);

 dev_dbg(dev, "trace\n");
 nd_detach_ndns(&nd_pfn->dev, &nd_pfn->ndns);
 ida_simple_remove(&nd_region->pfn_ida, nd_pfn->id);
 kfree(nd_pfn->uuid);
 kfree(nd_pfn);
}
