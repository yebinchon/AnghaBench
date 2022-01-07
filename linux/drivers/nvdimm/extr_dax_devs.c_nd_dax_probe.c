
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
struct nd_dax {struct nd_pfn nd_pfn; } ;
struct device {int dummy; } ;


 int DAX_SIG ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;


 int __nd_device_register (struct device*) ;
 int dev_dbg (struct device*,char*,char*) ;
 char* dev_name (struct device*) ;
 struct nd_pfn_sb* devm_kmalloc (struct device*,int,int ) ;
 struct nd_dax* nd_dax_alloc (struct nd_region*) ;
 int nd_detach_ndns (struct device*,int *) ;
 struct device* nd_pfn_devinit (struct nd_pfn*,struct nd_namespace_common*) ;
 int nd_pfn_validate (struct nd_pfn*,int ) ;
 int nvdimm_bus_lock (TYPE_1__*) ;
 int nvdimm_bus_unlock (TYPE_1__*) ;
 int put_device (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

int nd_dax_probe(struct device *dev, struct nd_namespace_common *ndns)
{
 int rc;
 struct nd_dax *nd_dax;
 struct device *dax_dev;
 struct nd_pfn *nd_pfn;
 struct nd_pfn_sb *pfn_sb;
 struct nd_region *nd_region = to_nd_region(ndns->dev.parent);

 if (ndns->force_raw)
  return -ENODEV;

 switch (ndns->claim_class) {
 case 128:
 case 129:
  break;
 default:
  return -ENODEV;
 }

 nvdimm_bus_lock(&ndns->dev);
 nd_dax = nd_dax_alloc(nd_region);
 nd_pfn = &nd_dax->nd_pfn;
 dax_dev = nd_pfn_devinit(nd_pfn, ndns);
 nvdimm_bus_unlock(&ndns->dev);
 if (!dax_dev)
  return -ENOMEM;
 pfn_sb = devm_kmalloc(dev, sizeof(*pfn_sb), GFP_KERNEL);
 nd_pfn->pfn_sb = pfn_sb;
 rc = nd_pfn_validate(nd_pfn, DAX_SIG);
 dev_dbg(dev, "dax: %s\n", rc == 0 ? dev_name(dax_dev) : "<none>");
 if (rc < 0) {
  nd_detach_ndns(dax_dev, &nd_pfn->ndns);
  put_device(dax_dev);
 } else
  __nd_device_register(dax_dev);

 return rc;
}
