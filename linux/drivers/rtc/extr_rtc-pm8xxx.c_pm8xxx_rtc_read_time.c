
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef unsigned int u8 ;
struct rtc_time {int dummy; } ;
struct pm8xxx_rtc_regs {int read; } ;
struct pm8xxx_rtc {int regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;


 int NUM_8_BIT_RTC_REGS ;
 int dev_dbg (struct device*,char*,unsigned long,struct rtc_time*,struct rtc_time*) ;
 int dev_err (struct device*,char*) ;
 struct pm8xxx_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,unsigned int*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int rtc_time_to_tm (unsigned long,struct rtc_time*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int pm8xxx_rtc_read_time(struct device *dev, struct rtc_time *tm)
{
 int rc;
 u8 value[NUM_8_BIT_RTC_REGS];
 unsigned long secs;
 unsigned int reg;
 struct pm8xxx_rtc *rtc_dd = dev_get_drvdata(dev);
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

 rc = regmap_bulk_read(rtc_dd->regmap, regs->read, value, sizeof(value));
 if (rc) {
  dev_err(dev, "RTC read data register failed\n");
  return rc;
 }





 rc = regmap_read(rtc_dd->regmap, regs->read, &reg);
 if (rc < 0) {
  dev_err(dev, "RTC read data register failed\n");
  return rc;
 }

 if (unlikely(reg < value[0])) {
  rc = regmap_bulk_read(rtc_dd->regmap, regs->read,
          value, sizeof(value));
  if (rc) {
   dev_err(dev, "RTC read data register failed\n");
   return rc;
  }
 }

 secs = value[0] | (value[1] << 8) | (value[2] << 16) |
        ((unsigned long)value[3] << 24);

 rtc_time_to_tm(secs, tm);

 dev_dbg(dev, "secs = %lu, h:m:s == %ptRt, y-m-d = %ptRdr\n", secs, tm, tm);

 return 0;
}
