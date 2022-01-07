
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct pm8941_wled_var_cfg {size_t size; size_t (* fn ) (size_t) ;size_t* values; } ;


 size_t UINT_MAX ;
 size_t stub1 (size_t) ;

__attribute__((used)) static u32 pm8941_wled_values(const struct pm8941_wled_var_cfg *cfg, u32 idx)
{
 if (idx >= cfg->size)
  return UINT_MAX;
 if (cfg->fn)
  return cfg->fn(idx);
 if (cfg->values)
  return cfg->values[idx];
 return idx;
}
