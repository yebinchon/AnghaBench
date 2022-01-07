
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {int claim_class; int dev; } ;
struct device {int * parent; scalar_t__ driver; } ;
typedef size_t ssize_t ;


 size_t EBUSY ;
 size_t EINVAL ;
 size_t ENODEV ;
 size_t ENOMEM ;
 size_t ENXIO ;
 int GFP_KERNEL ;





 scalar_t__ SZ_16M ;
 int WARN_ON_ONCE (int) ;
 int __nd_attach_ndns (struct device*,struct nd_namespace_common*,struct nd_namespace_common**) ;
 scalar_t__ __nvdimm_namespace_capacity (struct nd_namespace_common*) ;
 int dev_dbg (struct device*,char*,...) ;
 char* dev_name (int *) ;
 struct device* device_find_child (int *,char*,int ) ;
 int is_nd_btt (struct device*) ;
 int is_nd_dax (struct device*) ;
 int is_nd_pfn (struct device*) ;
 int is_nvdimm_bus_locked (struct device*) ;
 int kfree (char*) ;
 char* kstrndup (char const*,size_t,int ) ;
 int namespace_match ;
 int nd_detach_and_reset (struct device*,struct nd_namespace_common**) ;
 int put_device (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int strim (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

ssize_t nd_namespace_store(struct device *dev,
  struct nd_namespace_common **_ndns, const char *buf,
  size_t len)
{
 struct nd_namespace_common *ndns;
 struct device *found;
 char *name;

 if (dev->driver) {
  dev_dbg(dev, "namespace already active\n");
  return -EBUSY;
 }

 name = kstrndup(buf, len, GFP_KERNEL);
 if (!name)
  return -ENOMEM;
 strim(name);

 if (strncmp(name, "namespace", 9) == 0 || strcmp(name, "") == 0)
            ;
 else {
  len = -EINVAL;
  goto out;
 }

 ndns = *_ndns;
 if (strcmp(name, "") == 0) {
  nd_detach_and_reset(dev, _ndns);
  goto out;
 } else if (ndns) {
  dev_dbg(dev, "namespace already set to: %s\n",
    dev_name(&ndns->dev));
  len = -EBUSY;
  goto out;
 }

 found = device_find_child(dev->parent, name, namespace_match);
 if (!found) {
  dev_dbg(dev, "'%s' not found under %s\n", name,
    dev_name(dev->parent));
  len = -ENODEV;
  goto out;
 }

 ndns = to_ndns(found);

 switch (ndns->claim_class) {
 case 129:
  break;
 case 132:
 case 131:
  if (!is_nd_btt(dev)) {
   len = -EBUSY;
   goto out_attach;
  }
  break;
 case 128:
  if (!is_nd_pfn(dev)) {
   len = -EBUSY;
   goto out_attach;
  }
  break;
 case 130:
  if (!is_nd_dax(dev)) {
   len = -EBUSY;
   goto out_attach;
  }
  break;
 default:
  len = -EBUSY;
  goto out_attach;
  break;
 }

 if (__nvdimm_namespace_capacity(ndns) < SZ_16M) {
  dev_dbg(dev, "%s too small to host\n", name);
  len = -ENXIO;
  goto out_attach;
 }

 WARN_ON_ONCE(!is_nvdimm_bus_locked(dev));
 if (!__nd_attach_ndns(dev, ndns, _ndns)) {
  dev_dbg(dev, "%s already claimed\n",
    dev_name(&ndns->dev));
  len = -EBUSY;
 }

 out_attach:
 put_device(&ndns->dev);
 out:
 kfree(name);
 return len;
}
