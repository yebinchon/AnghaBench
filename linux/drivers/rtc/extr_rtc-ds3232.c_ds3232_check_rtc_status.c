
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ds3232 {int regmap; } ;
struct device {int dummy; } ;


 int DS3232_REG_CR ;
 int DS3232_REG_CR_A1IE ;
 int DS3232_REG_CR_A2IE ;
 int DS3232_REG_CR_INTCN ;
 int DS3232_REG_SR ;
 int DS3232_REG_SR_A1F ;
 int DS3232_REG_SR_A2F ;
 int DS3232_REG_SR_OSF ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int dev_warn (struct device*,char*) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ds3232_check_rtc_status(struct device *dev)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 int ret = 0;
 int control, stat;

 ret = regmap_read(ds3232->regmap, DS3232_REG_SR, &stat);
 if (ret)
  return ret;

 if (stat & DS3232_REG_SR_OSF)
  dev_warn(dev,
    "oscillator discontinuity flagged, "
    "time unreliable\n");

 stat &= ~(DS3232_REG_SR_OSF | DS3232_REG_SR_A1F | DS3232_REG_SR_A2F);

 ret = regmap_write(ds3232->regmap, DS3232_REG_SR, stat);
 if (ret)
  return ret;






 ret = regmap_read(ds3232->regmap, DS3232_REG_CR, &control);
 if (ret)
  return ret;

 control &= ~(DS3232_REG_CR_A1IE | DS3232_REG_CR_A2IE);
 control |= DS3232_REG_CR_INTCN;

 return regmap_write(ds3232->regmap, DS3232_REG_CR, control);
}
