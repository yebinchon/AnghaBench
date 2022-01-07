
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int id; } ;
struct device {int dummy; } ;


 int dimm_ida ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct nvdimm*) ;
 struct nvdimm* to_nvdimm (struct device*) ;

__attribute__((used)) static void nvdimm_release(struct device *dev)
{
 struct nvdimm *nvdimm = to_nvdimm(dev);

 ida_simple_remove(&dimm_ida, nvdimm->id);
 kfree(nvdimm);
}
