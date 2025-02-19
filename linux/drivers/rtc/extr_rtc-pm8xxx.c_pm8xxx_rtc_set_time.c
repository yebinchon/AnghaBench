
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int value ;
typedef int u8 ;
struct rtc_time {int dummy; } ;
struct pm8xxx_rtc_regs {unsigned int alarm_en; scalar_t__ alarm_ctrl; scalar_t__ ctrl; scalar_t__ write; } ;
struct pm8xxx_rtc {int ctrl_reg_lock; int regmap; int allow_set_time; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;


 int EACCES ;
 int NUM_8_BIT_RTC_REGS ;
 unsigned int PM8xxx_RTC_ENABLE ;
 int dev_dbg (struct device*,char*,unsigned long) ;
 int dev_err (struct device*,char*) ;
 struct pm8xxx_rtc* dev_get_drvdata (struct device*) ;
 int regmap_bulk_write (int ,scalar_t__,int*,int) ;
 int regmap_read (int ,scalar_t__,unsigned int*) ;
 int regmap_write (int ,scalar_t__,unsigned int) ;
 int rtc_tm_to_time (struct rtc_time*,unsigned long*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pm8xxx_rtc_set_time(struct device *dev, struct rtc_time *tm)
{
 int rc, i;
 unsigned long secs, irq_flags;
 u8 value[NUM_8_BIT_RTC_REGS], alarm_enabled = 0, rtc_disabled = 0;
 unsigned int ctrl_reg, rtc_ctrl_reg;
 struct pm8xxx_rtc *rtc_dd = dev_get_drvdata(dev);
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;

 if (!rtc_dd->allow_set_time)
  return -EACCES;

 rtc_tm_to_time(tm, &secs);

 dev_dbg(dev, "Seconds value to be written to RTC = %lu\n", secs);

 for (i = 0; i < NUM_8_BIT_RTC_REGS; i++) {
  value[i] = secs & 0xFF;
  secs >>= 8;
 }

 spin_lock_irqsave(&rtc_dd->ctrl_reg_lock, irq_flags);

 rc = regmap_read(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
 if (rc)
  goto rtc_rw_fail;

 if (ctrl_reg & regs->alarm_en) {
  alarm_enabled = 1;
  ctrl_reg &= ~regs->alarm_en;
  rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
  if (rc) {
   dev_err(dev, "Write to RTC Alarm control register failed\n");
   goto rtc_rw_fail;
  }
 }


 rc = regmap_read(rtc_dd->regmap, regs->ctrl, &rtc_ctrl_reg);
 if (rc)
  goto rtc_rw_fail;

 if (rtc_ctrl_reg & PM8xxx_RTC_ENABLE) {
  rtc_disabled = 1;
  rtc_ctrl_reg &= ~PM8xxx_RTC_ENABLE;
  rc = regmap_write(rtc_dd->regmap, regs->ctrl, rtc_ctrl_reg);
  if (rc) {
   dev_err(dev, "Write to RTC control register failed\n");
   goto rtc_rw_fail;
  }
 }


 rc = regmap_write(rtc_dd->regmap, regs->write, 0);
 if (rc) {
  dev_err(dev, "Write to RTC write data register failed\n");
  goto rtc_rw_fail;
 }


 rc = regmap_bulk_write(rtc_dd->regmap, regs->write + 1,
          &value[1], sizeof(value) - 1);
 if (rc) {
  dev_err(dev, "Write to RTC write data register failed\n");
  goto rtc_rw_fail;
 }


 rc = regmap_write(rtc_dd->regmap, regs->write, value[0]);
 if (rc) {
  dev_err(dev, "Write to RTC write data register failed\n");
  goto rtc_rw_fail;
 }


 if (rtc_disabled) {
  rtc_ctrl_reg |= PM8xxx_RTC_ENABLE;
  rc = regmap_write(rtc_dd->regmap, regs->ctrl, rtc_ctrl_reg);
  if (rc) {
   dev_err(dev, "Write to RTC control register failed\n");
   goto rtc_rw_fail;
  }
 }

 if (alarm_enabled) {
  ctrl_reg |= regs->alarm_en;
  rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
  if (rc) {
   dev_err(dev, "Write to RTC Alarm control register failed\n");
   goto rtc_rw_fail;
  }
 }

rtc_rw_fail:
 spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);

 return rc;
}
