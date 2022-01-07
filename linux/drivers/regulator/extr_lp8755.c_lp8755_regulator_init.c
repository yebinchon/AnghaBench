
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct regulator_config {int of_node; int init_data; struct lp8755_chip* driver_data; TYPE_2__* dev; int regmap; } ;
struct lp8755_platform_data {int * buck_data; } ;
struct lp8755_chip {size_t mphase; TYPE_2__* dev; int ** rdev; int regmap; struct lp8755_platform_data* pdata; } ;
struct TYPE_5__ {int of_node; } ;
struct TYPE_4__ {int nreg; int* buck_num; } ;


 scalar_t__ IS_ERR (int *) ;
 int PTR_ERR (int *) ;
 int dev_err (TYPE_2__*,char*,int) ;
 int * devm_regulator_register (TYPE_2__*,int *,struct regulator_config*) ;
 int * lp8755_regulators ;
 TYPE_1__* mphase_buck ;

__attribute__((used)) static int lp8755_regulator_init(struct lp8755_chip *pchip)
{
 int ret, icnt, buck_num;
 struct lp8755_platform_data *pdata = pchip->pdata;
 struct regulator_config rconfig = { };

 rconfig.regmap = pchip->regmap;
 rconfig.dev = pchip->dev;
 rconfig.driver_data = pchip;

 for (icnt = 0; icnt < mphase_buck[pchip->mphase].nreg; icnt++) {
  buck_num = mphase_buck[pchip->mphase].buck_num[icnt];
  rconfig.init_data = pdata->buck_data[buck_num];
  rconfig.of_node = pchip->dev->of_node;
  pchip->rdev[buck_num] =
      devm_regulator_register(pchip->dev,
        &lp8755_regulators[buck_num], &rconfig);
  if (IS_ERR(pchip->rdev[buck_num])) {
   ret = PTR_ERR(pchip->rdev[buck_num]);
   pchip->rdev[buck_num] = ((void*)0);
   dev_err(pchip->dev, "regulator init failed: buck %d\n",
    buck_num);
   return ret;
  }
 }

 return 0;
}
