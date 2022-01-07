
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max77620_therm_info {int dev; int rmap; } ;


 unsigned int MAX77620_IRQ_TJALRM1_MASK ;
 unsigned int MAX77620_IRQ_TJALRM2_MASK ;
 int MAX77620_NORMAL_OPERATING_TEMP ;
 int MAX77620_REG_STATLBT ;
 int MAX77620_TJALARM1_TEMP ;
 int MAX77620_TJALARM2_TEMP ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max77620_thermal_read_temp(void *data, int *temp)
{
 struct max77620_therm_info *mtherm = data;
 unsigned int val;
 int ret;

 ret = regmap_read(mtherm->rmap, MAX77620_REG_STATLBT, &val);
 if (ret < 0) {
  dev_err(mtherm->dev, "Failed to read STATLBT: %d\n", ret);
  return ret;
 }

 if (val & MAX77620_IRQ_TJALRM2_MASK)
  *temp = MAX77620_TJALARM2_TEMP;
 else if (val & MAX77620_IRQ_TJALRM1_MASK)
  *temp = MAX77620_TJALARM1_TEMP;
 else
  *temp = MAX77620_NORMAL_OPERATING_TEMP;

 return 0;
}
