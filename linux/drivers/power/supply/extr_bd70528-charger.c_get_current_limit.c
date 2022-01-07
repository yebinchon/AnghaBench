
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bd70528_psy {int dev; int regmap; } ;


 int ARRAY_SIZE (int *) ;
 unsigned int BD70528_MASK_CHG_DCIN_ILIM ;
 int BD70528_REG_CHG_DCIN_ILIM ;
 int * current_limit_ranges ;
 int dev_err (int ,char*,int) ;
 int find_value_for_selector_low (int *,int ,unsigned int,int*) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int get_current_limit(struct bd70528_psy *bdpsy, int *ma)
{
 unsigned int sel;
 int ret;

 ret = regmap_read(bdpsy->regmap, BD70528_REG_CHG_DCIN_ILIM,
     &sel);

 if (ret) {
  dev_err(bdpsy->dev,
   "Input current limit reading failed (%d)\n", ret);
  return ret;
 }

 sel &= BD70528_MASK_CHG_DCIN_ILIM;

 ret = find_value_for_selector_low(&current_limit_ranges[0],
       ARRAY_SIZE(current_limit_ranges), sel,
       ma);

 if (ret) {

  *ma = 500;
 }
 return 0;
}
