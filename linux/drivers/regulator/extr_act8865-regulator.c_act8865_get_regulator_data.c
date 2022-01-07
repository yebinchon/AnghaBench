
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct act8865_regulator_data {int id; } ;
struct act8865_platform_data {int num_regulators; struct act8865_regulator_data* regulators; } ;



__attribute__((used)) static struct act8865_regulator_data *act8865_get_regulator_data(
  int id, struct act8865_platform_data *pdata)
{
 int i;

 for (i = 0; i < pdata->num_regulators; i++) {
  if (pdata->regulators[i].id == id)
   return &pdata->regulators[i];
 }

 return ((void*)0);
}
