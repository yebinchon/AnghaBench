
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_pfn {int mode; int * uuid; } ;
struct nd_namespace_common {int dummy; } ;
struct nd_btt {int * uuid; scalar_t__ lbasize; } ;
struct device {int dummy; } ;


 int ND_ASYNC ;
 int PFN_MODE_NONE ;
 int __nd_detach_ndns (struct device*,struct nd_namespace_common**) ;
 scalar_t__ is_idle (struct device*,struct nd_namespace_common*) ;
 scalar_t__ is_nd_btt (struct device*) ;
 scalar_t__ is_nd_dax (struct device*) ;
 scalar_t__ is_nd_pfn (struct device*) ;
 int kfree (int *) ;
 int nd_device_unregister (struct device*,int ) ;
 struct nd_btt* to_nd_btt (struct device*) ;
 struct nd_pfn* to_nd_pfn_safe (struct device*) ;

__attribute__((used)) static void nd_detach_and_reset(struct device *dev,
  struct nd_namespace_common **_ndns)
{

 __nd_detach_ndns(dev, _ndns);
 if (is_idle(dev, *_ndns)) {
  nd_device_unregister(dev, ND_ASYNC);
 } else if (is_nd_btt(dev)) {
  struct nd_btt *nd_btt = to_nd_btt(dev);

  nd_btt->lbasize = 0;
  kfree(nd_btt->uuid);
  nd_btt->uuid = ((void*)0);
 } else if (is_nd_pfn(dev) || is_nd_dax(dev)) {
  struct nd_pfn *nd_pfn = to_nd_pfn_safe(dev);

  kfree(nd_pfn->uuid);
  nd_pfn->uuid = ((void*)0);
  nd_pfn->mode = PFN_MODE_NONE;
 }
}
