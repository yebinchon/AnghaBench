
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct max8973_chip {int junction_temp_warning; int dev; int regmap; } ;


 unsigned int MAX77621_CHIPID_TJINT_S ;
 int MAX77621_NORMAL_OPERATING_TEMP ;
 int MAX8973_CHIPID1 ;
 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;

__attribute__((used)) static int max8973_thermal_read_temp(void *data, int *temp)
{
 struct max8973_chip *mchip = data;
 unsigned int val;
 int ret;

 ret = regmap_read(mchip->regmap, MAX8973_CHIPID1, &val);
 if (ret < 0) {
  dev_err(mchip->dev, "Failed to read register CHIPID1, %d", ret);
  return ret;
 }


 if (val & MAX77621_CHIPID_TJINT_S)
  *temp = mchip->junction_temp_warning + 1000;
 else
  *temp = MAX77621_NORMAL_OPERATING_TEMP;

 return 0;
}
