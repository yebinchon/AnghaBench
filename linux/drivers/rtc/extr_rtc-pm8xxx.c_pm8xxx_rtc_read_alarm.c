
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
struct rtc_wkalrm {int time; } ;
struct pm8xxx_rtc_regs {int alarm_rw; } ;
struct pm8xxx_rtc {int regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;


 int NUM_8_BIT_RTC_REGS ;
 int dev_dbg (struct device*,char*,int *,int *) ;
 int dev_err (struct device*,char*) ;
 struct pm8xxx_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_read (int ,int ,int*,int) ;
 int rtc_time_to_tm (unsigned long,int *) ;
 int rtc_valid_tm (int *) ;

__attribute__((used)) static int pm8xxx_rtc_read_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 int rc;
 u8 value[NUM_8_BIT_RTC_REGS];
 unsigned long secs;
 struct pm8xxx_rtc *rtc_dd = dev_get_drvdata(dev);
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

 rc = regmap_bulk_read(rtc_dd->regmap, regs->alarm_rw, value,
         sizeof(value));
 if (rc) {
  dev_err(dev, "RTC alarm time read failed\n");
  return rc;
 }

 secs = value[0] | (value[1] << 8) | (value[2] << 16) |
        ((unsigned long)value[3] << 24);

 rtc_time_to_tm(secs, &alarm->time);

 rc = rtc_valid_tm(&alarm->time);
 if (rc < 0) {
  dev_err(dev, "Invalid alarm time read from RTC\n");
  return rc;
 }

 dev_dbg(dev, "Alarm set for - h:m:s=%ptRt, y-m-d=%ptRdr\n",
  &alarm->time, &alarm->time);

 return 0;
}
