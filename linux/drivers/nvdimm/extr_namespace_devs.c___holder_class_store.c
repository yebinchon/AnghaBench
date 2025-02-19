
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {scalar_t__ claim_class; scalar_t__ claim; } ;
struct device {scalar_t__ driver; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ EBUSY ;
 scalar_t__ EINVAL ;
 scalar_t__ NVDIMM_CCLASS_DAX ;
 scalar_t__ NVDIMM_CCLASS_NONE ;
 scalar_t__ NVDIMM_CCLASS_PFN ;
 scalar_t__ btt_claim_class (struct device*) ;
 scalar_t__ sysfs_streq (char const*,char*) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t __holder_class_store(struct device *dev, const char *buf)
{
 struct nd_namespace_common *ndns = to_ndns(dev);

 if (dev->driver || ndns->claim)
  return -EBUSY;

 if (sysfs_streq(buf, "btt"))
  ndns->claim_class = btt_claim_class(dev);
 else if (sysfs_streq(buf, "pfn"))
  ndns->claim_class = NVDIMM_CCLASS_PFN;
 else if (sysfs_streq(buf, "dax"))
  ndns->claim_class = NVDIMM_CCLASS_DAX;
 else if (sysfs_streq(buf, ""))
  ndns->claim_class = NVDIMM_CCLASS_NONE;
 else
  return -EINVAL;


 if (ndns->claim_class < 0)
  return ndns->claim_class;

 return 0;
}
