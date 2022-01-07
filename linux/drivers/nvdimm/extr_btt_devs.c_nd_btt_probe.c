
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct nd_region {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct nd_namespace_common {int claim_class; TYPE_1__ dev; scalar_t__ force_raw; } ;
struct nd_btt {int ndns; } ;
struct device {int dummy; } ;
struct btt_sb {int dummy; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;



 struct device* __nd_btt_create (struct nd_region*,int ,int *,struct nd_namespace_common*) ;
 int __nd_btt_probe (struct nd_btt*,struct nd_namespace_common*,struct btt_sb*) ;
 int dev_dbg (struct device*,char*,char*) ;
 char* dev_name (struct device*) ;
 struct btt_sb* devm_kzalloc (struct device*,int,int ) ;
 int nd_detach_ndns (struct device*,int *) ;
 int nvdimm_bus_lock (TYPE_1__*) ;
 int nvdimm_bus_unlock (TYPE_1__*) ;
 int put_device (struct device*) ;
 struct nd_btt* to_nd_btt (struct device*) ;
 struct nd_region* to_nd_region (int ) ;

int nd_btt_probe(struct device *dev, struct nd_namespace_common *ndns)
{
 int rc;
 struct device *btt_dev;
 struct btt_sb *btt_sb;
 struct nd_region *nd_region = to_nd_region(ndns->dev.parent);

 if (ndns->force_raw)
  return -ENODEV;

 switch (ndns->claim_class) {
 case 128:
 case 130:
 case 129:
  break;
 default:
  return -ENODEV;
 }

 nvdimm_bus_lock(&ndns->dev);
 btt_dev = __nd_btt_create(nd_region, 0, ((void*)0), ndns);
 nvdimm_bus_unlock(&ndns->dev);
 if (!btt_dev)
  return -ENOMEM;
 btt_sb = devm_kzalloc(dev, sizeof(*btt_sb), GFP_KERNEL);
 rc = __nd_btt_probe(to_nd_btt(btt_dev), ndns, btt_sb);
 dev_dbg(dev, "btt: %s\n", rc == 0 ? dev_name(btt_dev) : "<none>");
 if (rc < 0) {
  struct nd_btt *nd_btt = to_nd_btt(btt_dev);

  nd_detach_ndns(btt_dev, &nd_btt->ndns);
  put_device(btt_dev);
 }

 return rc;
}
