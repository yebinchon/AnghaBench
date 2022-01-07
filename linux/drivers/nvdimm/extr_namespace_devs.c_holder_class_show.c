
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_namespace_common {scalar_t__ claim_class; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 scalar_t__ NVDIMM_CCLASS_BTT ;
 scalar_t__ NVDIMM_CCLASS_BTT2 ;
 scalar_t__ NVDIMM_CCLASS_DAX ;
 scalar_t__ NVDIMM_CCLASS_NONE ;
 scalar_t__ NVDIMM_CCLASS_PFN ;
 int nd_device_lock (struct device*) ;
 int nd_device_unlock (struct device*) ;
 int sprintf (char*,char*) ;
 struct nd_namespace_common* to_ndns (struct device*) ;

__attribute__((used)) static ssize_t holder_class_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nd_namespace_common *ndns = to_ndns(dev);
 ssize_t rc;

 nd_device_lock(dev);
 if (ndns->claim_class == NVDIMM_CCLASS_NONE)
  rc = sprintf(buf, "\n");
 else if ((ndns->claim_class == NVDIMM_CCLASS_BTT) ||
   (ndns->claim_class == NVDIMM_CCLASS_BTT2))
  rc = sprintf(buf, "btt\n");
 else if (ndns->claim_class == NVDIMM_CCLASS_PFN)
  rc = sprintf(buf, "pfn\n");
 else if (ndns->claim_class == NVDIMM_CCLASS_DAX)
  rc = sprintf(buf, "dax\n");
 else
  rc = sprintf(buf, "<unknown>\n");
 nd_device_unlock(dev);

 return rc;
}
