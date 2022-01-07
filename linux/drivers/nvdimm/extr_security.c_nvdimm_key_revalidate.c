
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int flags; TYPE_1__* ops; } ;
struct nvdimm {TYPE_2__ sec; } ;
struct key {int dummy; } ;
struct TYPE_3__ {int (* change_key ) (struct nvdimm*,void const*,void const*,int ) ;} ;


 int EOPNOTSUPP ;
 int NVDIMM_USER ;
 void* nvdimm_get_key_payload (struct nvdimm*,struct key**) ;
 int nvdimm_put_key (struct key*) ;
 int nvdimm_security_flags (struct nvdimm*,int ) ;
 int stub1 (struct nvdimm*,void const*,void const*,int ) ;

__attribute__((used)) static int nvdimm_key_revalidate(struct nvdimm *nvdimm)
{
 struct key *key;
 int rc;
 const void *data;

 if (!nvdimm->sec.ops->change_key)
  return -EOPNOTSUPP;

 data = nvdimm_get_key_payload(nvdimm, &key);





 rc = nvdimm->sec.ops->change_key(nvdimm, data, data, NVDIMM_USER);
 if (rc < 0) {
  nvdimm_put_key(key);
  return rc;
 }

 nvdimm_put_key(key);
 nvdimm->sec.flags = nvdimm_security_flags(nvdimm, NVDIMM_USER);
 return 0;
}
