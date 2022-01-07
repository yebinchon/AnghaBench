
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct rtc_wkalrm {scalar_t__ enabled; TYPE_1__ time; } ;
struct ds3232 {scalar_t__ irq; int regmap; } ;
struct device {int dummy; } ;


 int DS3232_REG_ALARM1 ;
 int DS3232_REG_CR ;
 int DS3232_REG_CR_A1IE ;
 int DS3232_REG_CR_A2IE ;
 int DS3232_REG_SR ;
 int DS3232_REG_SR_A1F ;
 int DS3232_REG_SR_A2F ;
 int EINVAL ;
 int bin2bcd (int ) ;
 struct ds3232* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,int *,int) ;
 int regmap_read (int ,int ,int*) ;
 int regmap_write (int ,int ,int) ;

__attribute__((used)) static int ds3232_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 struct ds3232 *ds3232 = dev_get_drvdata(dev);
 int control, stat;
 int ret;
 u8 buf[4];

 if (ds3232->irq <= 0)
  return -EINVAL;

 buf[0] = bin2bcd(alarm->time.tm_sec);
 buf[1] = bin2bcd(alarm->time.tm_min);
 buf[2] = bin2bcd(alarm->time.tm_hour);
 buf[3] = bin2bcd(alarm->time.tm_mday);


 ret = regmap_read(ds3232->regmap, DS3232_REG_CR, &control);
 if (ret)
  goto out;
 control &= ~(DS3232_REG_CR_A1IE | DS3232_REG_CR_A2IE);
 ret = regmap_write(ds3232->regmap, DS3232_REG_CR, control);
 if (ret)
  goto out;


 ret = regmap_read(ds3232->regmap, DS3232_REG_SR, &stat);
 if (ret)
  goto out;
 stat &= ~(DS3232_REG_SR_A1F | DS3232_REG_SR_A2F);
 ret = regmap_write(ds3232->regmap, DS3232_REG_SR, stat);
 if (ret)
  goto out;

 ret = regmap_bulk_write(ds3232->regmap, DS3232_REG_ALARM1, buf, 4);
 if (ret)
  goto out;

 if (alarm->enabled) {
  control |= DS3232_REG_CR_A1IE;
  ret = regmap_write(ds3232->regmap, DS3232_REG_CR, control);
 }
out:
 return ret;
}
