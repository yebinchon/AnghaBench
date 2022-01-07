
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {unsigned long cmd_mask; } ;



unsigned long nvdimm_cmd_mask(struct nvdimm *nvdimm)
{
 return nvdimm->cmd_mask;
}
