
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct nd_pfn {int ndns; struct device dev; int align; int mode; } ;
struct nd_namespace_common {int claim; int dev; } ;


 int PFN_MODE_NONE ;
 int __nd_attach_ndns (struct device*,struct nd_namespace_common*,int *) ;
 int dev_dbg (int *,char*,int ) ;
 int dev_name (int ) ;
 int device_initialize (struct device*) ;
 int nd_pfn_default_alignment () ;
 int put_device (struct device*) ;

struct device *nd_pfn_devinit(struct nd_pfn *nd_pfn,
  struct nd_namespace_common *ndns)
{
 struct device *dev;

 if (!nd_pfn)
  return ((void*)0);

 nd_pfn->mode = PFN_MODE_NONE;
 nd_pfn->align = nd_pfn_default_alignment();
 dev = &nd_pfn->dev;
 device_initialize(&nd_pfn->dev);
 if (ndns && !__nd_attach_ndns(&nd_pfn->dev, ndns, &nd_pfn->ndns)) {
  dev_dbg(&ndns->dev, "failed, already claimed by %s\n",
    dev_name(ndns->claim));
  put_device(dev);
  return ((void*)0);
 }
 return dev;
}
