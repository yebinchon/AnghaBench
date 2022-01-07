
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_pin_data {int reg; } ;
struct pm8xxx_gpio {int dev; int regmap; } ;


 int dev_err (int ,char*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;

__attribute__((used)) static int pm8xxx_read_bank(struct pm8xxx_gpio *pctrl,
       struct pm8xxx_pin_data *pin, int bank)
{
 unsigned int val = bank << 4;
 int ret;

 ret = regmap_write(pctrl->regmap, pin->reg, val);
 if (ret) {
  dev_err(pctrl->dev, "failed to select bank %d\n", bank);
  return ret;
 }

 ret = regmap_read(pctrl->regmap, pin->reg, &val);
 if (ret) {
  dev_err(pctrl->dev, "failed to read register %d\n", bank);
  return ret;
 }

 return val;
}
