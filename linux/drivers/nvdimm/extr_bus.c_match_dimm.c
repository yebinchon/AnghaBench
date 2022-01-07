
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {long id; } ;
struct device {int dummy; } ;


 scalar_t__ is_nvdimm (struct device*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static int match_dimm(struct device *dev, void *data)
{
 long id = (long) data;

 if (is_nvdimm(dev)) {
  struct nvdimm *nvdimm = to_nvdimm(dev);

  return nvdimm->id == id;
 }

 return 0;
}
