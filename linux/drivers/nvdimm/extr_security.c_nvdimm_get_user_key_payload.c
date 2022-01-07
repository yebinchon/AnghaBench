
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvdimm {int dummy; } ;
struct key {int dummy; } ;
typedef scalar_t__ key_serial_t ;


 int NVDIMM_BASE_KEY ;
 void const* key_data (struct key*) ;
 struct key* nvdimm_lookup_user_key (struct nvdimm*,scalar_t__,int) ;
 void const* zero_key ;

__attribute__((used)) static const void *nvdimm_get_user_key_payload(struct nvdimm *nvdimm,
  key_serial_t id, int subclass, struct key **key)
{
 *key = ((void*)0);
 if (id == 0) {
  if (subclass == NVDIMM_BASE_KEY)
   return zero_key;
  else
   return ((void*)0);
 }

 *key = nvdimm_lookup_user_key(nvdimm, id, subclass);
 if (!*key)
  return ((void*)0);

 return key_data(*key);
}
