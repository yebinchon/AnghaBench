
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct nvdimm_drvdata {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int ENXIO ;
 int dev_WARN_ONCE (struct device*,int,char*) ;
 struct nvdimm_drvdata* dev_get_drvdata (struct device*) ;
 int nd_label_nfree (struct nvdimm_drvdata*) ;
 int nvdimm_bus_lock (struct device*) ;
 int nvdimm_bus_unlock (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t available_slots_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct nvdimm_drvdata *ndd = dev_get_drvdata(dev);
 ssize_t rc;
 u32 nfree;

 if (!ndd)
  return -ENXIO;

 nvdimm_bus_lock(dev);
 nfree = nd_label_nfree(ndd);
 if (nfree - 1 > nfree) {
  dev_WARN_ONCE(dev, 1, "we ate our last label?\n");
  nfree = 0;
 } else
  nfree--;
 rc = sprintf(buf, "%d\n", nfree);
 nvdimm_bus_unlock(dev);
 return rc;
}
