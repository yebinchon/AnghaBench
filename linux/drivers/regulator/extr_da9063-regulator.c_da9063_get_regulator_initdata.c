
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_init_data {int dummy; } ;
struct da9063_regulators_pdata {int n_regulators; TYPE_1__* regulator_data; } ;
struct TYPE_2__ {int id; struct regulator_init_data const* initdata; } ;



__attribute__((used)) static const struct regulator_init_data *da9063_get_regulator_initdata(
  const struct da9063_regulators_pdata *regl_pdata, int id)
{
 int i;

 for (i = 0; i < regl_pdata->n_regulators; i++) {
  if (id == regl_pdata->regulator_data[i].id)
   return regl_pdata->regulator_data[i].initdata;
 }

 return ((void*)0);
}
