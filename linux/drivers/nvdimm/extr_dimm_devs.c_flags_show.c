
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int flags; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int NDD_ALIASING ;
 int NDD_LOCKED ;
 int sprintf (char*,char*,char*,char*) ;
 scalar_t__ test_bit (int ,int *) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static ssize_t flags_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 return sprintf(buf, "%s%s\n",
   test_bit(NDD_ALIASING, &nvdimm->flags) ? "alias " : "",
   test_bit(NDD_LOCKED, &nvdimm->flags) ? "lock " : "");
}
