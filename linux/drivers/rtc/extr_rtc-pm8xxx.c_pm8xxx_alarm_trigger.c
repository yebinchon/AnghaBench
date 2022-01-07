
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm8xxx_rtc_regs {unsigned int alarm_en; int alarm_ctrl2; int alarm_ctrl; } ;
struct pm8xxx_rtc {int rtc_dev; int regmap; int ctrl_reg_lock; int rtc; struct pm8xxx_rtc_regs* regs; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 unsigned int PM8xxx_RTC_ALARM_CLEAR ;
 int RTC_AF ;
 int RTC_IRQF ;
 int dev_err (int ,char*) ;
 int regmap_read (int ,int ,unsigned int*) ;
 int regmap_write (int ,int ,unsigned int) ;
 int rtc_update_irq (int ,int,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static irqreturn_t pm8xxx_alarm_trigger(int irq, void *dev_id)
{
 struct pm8xxx_rtc *rtc_dd = dev_id;
 const struct pm8xxx_rtc_regs *regs = rtc_dd->regs;
 unsigned int ctrl_reg;
 int rc;
 unsigned long irq_flags;

 rtc_update_irq(rtc_dd->rtc, 1, RTC_IRQF | RTC_AF);

 spin_lock_irqsave(&rtc_dd->ctrl_reg_lock, irq_flags);


 rc = regmap_read(rtc_dd->regmap, regs->alarm_ctrl, &ctrl_reg);
 if (rc) {
  spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);
  goto rtc_alarm_handled;
 }

 ctrl_reg &= ~regs->alarm_en;

 rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl, ctrl_reg);
 if (rc) {
  spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);
  dev_err(rtc_dd->rtc_dev,
   "Write to alarm control register failed\n");
  goto rtc_alarm_handled;
 }

 spin_unlock_irqrestore(&rtc_dd->ctrl_reg_lock, irq_flags);


 rc = regmap_read(rtc_dd->regmap, regs->alarm_ctrl2, &ctrl_reg);
 if (rc) {
  dev_err(rtc_dd->rtc_dev,
   "RTC Alarm control2 register read failed\n");
  goto rtc_alarm_handled;
 }

 ctrl_reg |= PM8xxx_RTC_ALARM_CLEAR;
 rc = regmap_write(rtc_dd->regmap, regs->alarm_ctrl2, ctrl_reg);
 if (rc)
  dev_err(rtc_dd->rtc_dev,
   "Write to RTC Alarm control2 register failed\n");

rtc_alarm_handled:
 return IRQ_HANDLED;
}
