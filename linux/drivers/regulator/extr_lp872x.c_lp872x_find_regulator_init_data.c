
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct regulator_init_data {int dummy; } ;
struct lp872x_platform_data {TYPE_1__* regulator_data; } ;
struct lp872x {int num_regulators; struct lp872x_platform_data* pdata; } ;
struct TYPE_2__ {int id; struct regulator_init_data* init_data; } ;



__attribute__((used)) static struct regulator_init_data
*lp872x_find_regulator_init_data(int id, struct lp872x *lp)
{
 struct lp872x_platform_data *pdata = lp->pdata;
 int i;

 if (!pdata)
  return ((void*)0);

 for (i = 0; i < lp->num_regulators; i++) {
  if (pdata->regulator_data[i].id == id)
   return pdata->regulator_data[i].init_data;
 }

 return ((void*)0);
}
