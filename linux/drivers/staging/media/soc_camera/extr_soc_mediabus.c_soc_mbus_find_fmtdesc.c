
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct soc_mbus_pixelfmt {int dummy; } ;
struct soc_mbus_lookup {scalar_t__ code; struct soc_mbus_pixelfmt const fmt; } ;



const struct soc_mbus_pixelfmt *soc_mbus_find_fmtdesc(
 u32 code,
 const struct soc_mbus_lookup *lookup,
 int n)
{
 int i;

 for (i = 0; i < n; i++)
  if (lookup[i].code == code)
   return &lookup[i].fmt;

 return ((void*)0);
}
