
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nd_region {int dummy; } ;
struct nd_pfn_sb {int dummy; } ;
struct nd_pfn {int ndns; struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_3__ {int parent; } ;
struct nd_namespace_common {int claim_class; TYPE_1__ dev; scalar_t__ force_raw; } ;
struct device {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int PFN_SIG ;
 int __nd_device_register (struct device*) ;
 int dev_dbg (struct device*,char*,char*) ;
 char* dev_name (struct device*) ;
 struct nd_pfn_sb* devm_kmalloc (struct device*,int,int ) ;
 int nd_detach_ndns (struct device*,int *) ;
 struct nd_pfn* nd_pfn_alloc (struct nd_region*) ;
 struct device* nd_pfn_devinit (struct nd_pfn*,struct nd_namespace_common*) ;
 int nd_pfn_validate (struct nd_pfn*,int ) ;
 int nvdimm_bus_lock (TYPE_1__*) ;
 int nvdimm_bus_unlock (TYPE_1__*) ;
 int put_device (struct device*) ;
 struct nd_pfn* to_nd_pfn (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

int nd_pfn_probe(struct device *dev, struct nd_namespace_common *ndns)
{
 int rc;
 struct nd_pfn *nd_pfn;
 struct device *pfn_dev;
 struct nd_pfn_sb *pfn_sb;
 struct nd_region *nd_region = to_nd_region(ndns->dev.parent);

 if (ndns->force_raw)
  return -ENODEV;

 switch (ndns->claim_class) {
 case 129:
 case 128:
  break;
 default:
  return -ENODEV;
 }

 nvdimm_bus_lock(&ndns->dev);
 nd_pfn = nd_pfn_alloc(nd_region);
 pfn_dev = nd_pfn_devinit(nd_pfn, ndns);
 nvdimm_bus_unlock(&ndns->dev);
 if (!pfn_dev)
  return -ENOMEM;
 pfn_sb = devm_kmalloc(dev, sizeof(*pfn_sb), GFP_KERNEL);
 nd_pfn = to_nd_pfn(pfn_dev);
 nd_pfn->pfn_sb = pfn_sb;
 rc = nd_pfn_validate(nd_pfn, PFN_SIG);
 dev_dbg(dev, "pfn: %s\n", rc == 0 ? dev_name(pfn_dev) : "<none>");
 if (rc < 0) {
  nd_detach_ndns(pfn_dev, &nd_pfn->ndns);
  put_device(pfn_dev);
 } else
  __nd_device_register(pfn_dev);

 return rc;
}
