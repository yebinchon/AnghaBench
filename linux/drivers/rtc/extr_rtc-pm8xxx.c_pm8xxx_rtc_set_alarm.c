
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef unsigned long u8 ;
struct rtc_wkalrm {int time; scalar_t__ enabled; } ;
struct pm8xxx_rtc_regs {unsigned int alarm_en; int alarm_ctrl; int alarm_rw; } ;
struct pm8xxx_rtc {int ctrl_reg_lock; int regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;


 int NUM_8_BIT_RTC_REGS ;
 int dev_dbg (struct device*,char*,int *,int *) ;
 int dev_err (struct device*,char*) ;
 struct pm8xxx_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,int ,unsigned long*,int) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int rtc_tm_to_time (int *,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pm8xxx_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alarm)
{
 int rc, i;
 u8 value[NUM_8_BIT_RTC_REGS];
 unsigned int ctrl_reg;
 unsigned long secs, irq_flags;
 struct pm8xxx_rtc *rtc_dd = dev_get_drvdata(dev);
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

 rtc_tm_to_time(&alarm->time, &secs);

 for (i = 0; i < NUM_8_BIT_RTC_REGS; i++) {
  value[i] = secs & 0xFF;
  secs >>= 8;
 }

 spin_lock_irqsave(&rtc_dd->ctrl_reg_lock, irq_flags);

 rc = regmap_bulk_write(rtc_dd->regmap, regs->alarm_rw, value,
          sizeof(value));
 if (rc) {
  dev_err(dev, "Write to RTC ALARM register failed\n");
  goto rtc_rw_fail;
 }

 rc = regmap_read(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
 if (rc)
  goto rtc_rw_fail;

 if (alarm->enabled)
  ctrl_reg |= regs->alarm_en;
 else
  ctrl_reg &= ~regs->alarm_en;

 rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
 if (rc) {
  dev_err(dev, "Write to RTC alarm control register failed\n");
  goto rtc_rw_fail;
 }

 dev_dbg(dev, "Alarm Set for h:m:s=%ptRt, y-m-d=%ptRdr\n",
  &alarm->time, &alarm->time);
rtc_rw_fail:
 spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);
 return rc;
}
