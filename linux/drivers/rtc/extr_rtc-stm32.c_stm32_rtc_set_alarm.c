
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {int alrmar; int isr; int cr; } ;
struct stm32_rtc {scalar_t__ base; TYPE_1__* data; } ;
struct rtc_time {unsigned int tm_mday; unsigned int tm_hour; unsigned int tm_min; unsigned int tm_sec; } ;
struct rtc_wkalrm {int enabled; struct rtc_time time; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 int EINVAL ;
 unsigned int STM32_RTC_ALRMXR_DATE ;
 unsigned int STM32_RTC_ALRMXR_DATE_SHIFT ;
 unsigned int STM32_RTC_ALRMXR_HOUR ;
 unsigned int STM32_RTC_ALRMXR_HOUR_SHIFT ;
 unsigned int STM32_RTC_ALRMXR_MIN ;
 unsigned int STM32_RTC_ALRMXR_MIN_SHIFT ;
 unsigned int STM32_RTC_ALRMXR_PM ;
 unsigned int STM32_RTC_ALRMXR_SEC ;
 unsigned int STM32_RTC_ALRMXR_SEC_SHIFT ;
 unsigned int STM32_RTC_CR_ALRAE ;
 unsigned int STM32_RTC_ISR_ALRAWF ;
 int dev_err (struct device*,char*) ;
 struct stm32_rtc* dev_get_drvdata (struct device*) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int readl_relaxed_poll_timeout_atomic (scalar_t__,unsigned int,unsigned int,int,int) ;
 int stm32_rtc_alarm_irq_enable (struct device*,int ) ;
 scalar_t__ stm32_rtc_valid_alrm (struct stm32_rtc*,struct rtc_time*) ;
 int stm32_rtc_wpr_lock (struct stm32_rtc*) ;
 int stm32_rtc_wpr_unlock (struct stm32_rtc*) ;
 int tm2bcd (struct rtc_time*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int stm32_rtc_set_alarm(struct device *dev, struct rtc_wkalrm *alrm)
{
 struct stm32_rtc *rtc = dev_get_drvdata(dev);
 const struct stm32_rtc_registers *regs = &rtc->data->regs;
 struct rtc_time *tm = &alrm->time;
 unsigned int cr, isr, alrmar;
 int ret = 0;

 tm2bcd(tm);





 if (stm32_rtc_valid_alrm(rtc, tm) < 0) {
  dev_err(dev, "Alarm can be set only on upcoming month.\n");
  return -EINVAL;
 }

 alrmar = 0;

 alrmar |= (tm->tm_mday << STM32_RTC_ALRMXR_DATE_SHIFT) &
    STM32_RTC_ALRMXR_DATE;

 alrmar &= ~STM32_RTC_ALRMXR_PM;
 alrmar |= (tm->tm_hour << STM32_RTC_ALRMXR_HOUR_SHIFT) &
    STM32_RTC_ALRMXR_HOUR;
 alrmar |= (tm->tm_min << STM32_RTC_ALRMXR_MIN_SHIFT) &
    STM32_RTC_ALRMXR_MIN;
 alrmar |= (tm->tm_sec << STM32_RTC_ALRMXR_SEC_SHIFT) &
    STM32_RTC_ALRMXR_SEC;

 stm32_rtc_wpr_unlock(rtc);


 cr = readl_relaxed(rtc->base + regs->cr);
 cr &= ~STM32_RTC_CR_ALRAE;
 writel_relaxed(cr, rtc->base + regs->cr);





 ret = readl_relaxed_poll_timeout_atomic(rtc->base + regs->isr,
      isr,
      (isr & STM32_RTC_ISR_ALRAWF),
      10, 100000);

 if (ret) {
  dev_err(dev, "Alarm update not allowed\n");
  goto end;
 }


 writel_relaxed(alrmar, rtc->base + regs->alrmar);

 stm32_rtc_alarm_irq_enable(dev, alrm->enabled);
end:
 stm32_rtc_wpr_lock(rtc);

 return ret;
}
