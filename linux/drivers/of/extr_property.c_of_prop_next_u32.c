
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct property {void* value; int length; } ;
typedef void __be32 ;


 int be32_to_cpup (void const*) ;

const __be32 *of_prop_next_u32(struct property *prop, const __be32 *cur,
          u32 *pu)
{
 const void *curv = cur;

 if (!prop)
  return ((void*)0);

 if (!cur) {
  curv = prop->value;
  goto out_val;
 }

 curv += sizeof(*cur);
 if (curv >= prop->value + prop->length)
  return ((void*)0);

out_val:
 *pu = be32_to_cpup(curv);
 return curv;
}
