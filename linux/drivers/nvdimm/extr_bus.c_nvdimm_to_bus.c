
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nvdimm_bus {int dummy; } ;
struct TYPE_2__ {int parent; } ;
struct nvdimm {TYPE_1__ dev; } ;


 struct nvdimm_bus* to_nvdimm_bus (int ) ;

struct nvdimm_bus *nvdimm_to_bus(struct nvdimm *nvdimm)
{
 return to_nvdimm_bus(nvdimm->dev.parent);
}
