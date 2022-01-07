
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct armada_thermal_data {int hyst_mask; } ;


 int ARRAY_SIZE (unsigned int*) ;
 unsigned int* hyst_levels_mc ;

__attribute__((used)) static unsigned int armada_mc_to_reg_hyst(struct armada_thermal_data *data,
       unsigned int hyst_mc)
{
 int i;






 for (i = ARRAY_SIZE(hyst_levels_mc) - 1; i > 0; i--)
  if (hyst_mc >= hyst_levels_mc[i])
   break;

 return i & data->hyst_mask;
}
