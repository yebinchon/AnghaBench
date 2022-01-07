
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int dev; int regmap; } ;


 unsigned int BD70528_MASK_CHG_DCIN1_UVLO ;
 int BD70528_REG_CHG_IN_STAT ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int bd70528_get_online(struct bd70528_psy *bdpsy, int *val)
{
 int ret;
 unsigned int v;

 ret = regmap_read(bdpsy->regmap, BD70528_REG_CHG_IN_STAT, &v);
 if (ret) {
  dev_err(bdpsy->dev, "DC1 IN state read failure %d\n",
   ret);
  return ret;
 }

 *val = (v & BD70528_MASK_CHG_DCIN1_UVLO) ? 1 : 0;

 return 0;
}
