
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



__attribute__((used)) static u32 sh_msiof_get_delay_bit(u32 dtdl_or_syncdl)
{
 if (dtdl_or_syncdl % 100)
  return dtdl_or_syncdl / 100 + 5;
 else
  return dtdl_or_syncdl / 100;
}
