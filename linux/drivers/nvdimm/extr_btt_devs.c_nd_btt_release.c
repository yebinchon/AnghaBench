
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_region {int btt_ida; } ;
struct nd_btt {struct nd_btt* uuid; int id; int ndns; int dev; } ;
struct device {int parent; } ;


 int dev_dbg (struct device*,char*) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct nd_btt*) ;
 int nd_detach_ndns (int *,int *) ;
 struct nd_btt* to_nd_btt (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static void nd_btt_release(struct device *dev)
{
 struct nd_region *nd_region = to_nd_region(dev->parent);
 struct nd_btt *nd_btt = to_nd_btt(dev);

 dev_dbg(dev, "trace\n");
 nd_detach_ndns(&nd_btt->dev, &nd_btt->ndns);
 ida_simple_remove(&nd_region->btt_ida, nd_btt->id);
 kfree(nd_btt->uuid);
 kfree(nd_btt);
}
