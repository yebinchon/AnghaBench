
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct omap_rtc {TYPE_1__* type; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int (* lock ) (struct omap_rtc*) ;scalar_t__ has_irqwakeen; int (* unlock ) (struct omap_rtc*) ;} ;


 int OMAP_RTC_INTERRUPTS_IT_ALARM ;
 int OMAP_RTC_INTERRUPTS_REG ;
 int OMAP_RTC_IRQWAKEEN ;
 int OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN ;
 struct omap_rtc* dev_get_drvdata (struct device*) ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int rtc_read (struct omap_rtc*,int ) ;
 int rtc_wait_not_busy (struct omap_rtc*) ;
 int rtc_write (struct omap_rtc*,int ,int ) ;
 int stub1 (struct omap_rtc*) ;
 int stub2 (struct omap_rtc*) ;

__attribute__((used)) static int omap_rtc_alarm_irq_enable(struct device *dev, unsigned int enabled)
{
 struct omap_rtc *rtc = dev_get_drvdata(dev);
 u8 reg, irqwake_reg = 0;

 local_irq_disable();
 rtc_wait_not_busy(rtc);
 reg = rtc_read(rtc, OMAP_RTC_INTERRUPTS_REG);
 if (rtc->type->has_irqwakeen)
  irqwake_reg = rtc_read(rtc, OMAP_RTC_IRQWAKEEN);

 if (enabled) {
  reg |= OMAP_RTC_INTERRUPTS_IT_ALARM;
  irqwake_reg |= OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
 } else {
  reg &= ~OMAP_RTC_INTERRUPTS_IT_ALARM;
  irqwake_reg &= ~OMAP_RTC_IRQWAKEEN_ALARM_WAKEEN;
 }
 rtc_wait_not_busy(rtc);
 rtc->type->unlock(rtc);
 rtc_write(rtc, OMAP_RTC_INTERRUPTS_REG, reg);
 if (rtc->type->has_irqwakeen)
  rtc_write(rtc, OMAP_RTC_IRQWAKEEN, irqwake_reg);
 rtc->type->lock(rtc);
 local_irq_enable();

 return 0;
}
