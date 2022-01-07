
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int overwrite_state; } ;
struct nvdimm {TYPE_1__ sec; } ;


 int sysfs_put (int ) ;

__attribute__((used)) static void shutdown_security_notify(void *data)
{
 struct nvdimm *nvdimm = data;

 sysfs_put(nvdimm->sec.overwrite_state);
}
