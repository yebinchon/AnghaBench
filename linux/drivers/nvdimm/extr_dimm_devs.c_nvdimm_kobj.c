
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct kobject {int dummy; } ;
struct TYPE_2__ {struct kobject kobj; } ;
struct nvdimm {TYPE_1__ dev; } ;



struct kobject *nvdimm_kobj(struct nvdimm *nvdimm)
{
 return &nvdimm->dev.kobj;
}
