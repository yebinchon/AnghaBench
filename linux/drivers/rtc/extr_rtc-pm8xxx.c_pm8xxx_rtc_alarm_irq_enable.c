
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_rtc_regs {unsigned int alarm_en; int alarm_ctrl; } ;
struct pm8xxx_rtc {int ctrl_reg_lock; int regmap; struct pm8xxx_rtc_regs* regs; } ;
struct device {int dummy; } ;


 int dev_err (struct device*,char*) ;
 struct pm8xxx_rtc* dev_get_drvdata (struct device*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int pm8xxx_rtc_alarm_irq_enable(struct device *dev, unsigned int enable)
{
 int rc;
 unsigned long irq_flags;
 struct pm8xxx_rtc *rtc_dd = dev_get_drvdata(dev);
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;
 unsigned int ctrl_reg;

 spin_lock_irqsave(&rtc_dd->ctrl_reg_lock, irq_flags);

 rc = regmap_read(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
 if (rc)
  goto rtc_rw_fail;

 if (enable)
  ctrl_reg |= regs->alarm_en;
 else
  ctrl_reg &= ~regs->alarm_en;

 rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
 if (rc) {
  dev_err(dev, "Write to RTC control register failed\n");
  goto rtc_rw_fail;
 }

rtc_rw_fail:
 spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);
 return rc;
}
