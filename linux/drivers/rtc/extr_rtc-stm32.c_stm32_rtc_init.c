
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_rtc_registers {int cr; int prer; } ;
struct stm32_rtc {scalar_t__ base; int rtc_ck; TYPE_1__* data; } ;
struct platform_device {int dev; } ;
struct TYPE_2__ {struct stm32_rtc_registers regs; } ;


 unsigned int STM32_RTC_CR_FMT ;
 unsigned int STM32_RTC_PRER_PRED_A ;
 unsigned int STM32_RTC_PRER_PRED_A_SHIFT ;
 unsigned int STM32_RTC_PRER_PRED_S ;
 unsigned int STM32_RTC_PRER_PRED_S_SHIFT ;
 unsigned int clk_get_rate (int ) ;
 int dev_err (int *,char*) ;
 int dev_warn (int *,char*,char*) ;
 unsigned int readl_relaxed (scalar_t__) ;
 int stm32_rtc_enter_init_mode (struct stm32_rtc*) ;
 int stm32_rtc_exit_init_mode (struct stm32_rtc*) ;
 int stm32_rtc_wait_sync (struct stm32_rtc*) ;
 int stm32_rtc_wpr_lock (struct stm32_rtc*) ;
 int stm32_rtc_wpr_unlock (struct stm32_rtc*) ;
 int writel_relaxed (unsigned int,scalar_t__) ;

__attribute__((used)) static int stm32_rtc_init(struct platform_device *pdev,
     struct stm32_rtc *rtc)
{
 const struct stm32_rtc_registers *regs = &rtc->data->regs;
 unsigned int prer, pred_a, pred_s, pred_a_max, pred_s_max, cr;
 unsigned int rate;
 int ret = 0;

 rate = clk_get_rate(rtc->rtc_ck);


 pred_a_max = STM32_RTC_PRER_PRED_A >> STM32_RTC_PRER_PRED_A_SHIFT;
 pred_s_max = STM32_RTC_PRER_PRED_S >> STM32_RTC_PRER_PRED_S_SHIFT;

 for (pred_a = pred_a_max; pred_a + 1 > 0; pred_a--) {
  pred_s = (rate / (pred_a + 1)) - 1;

  if (((pred_s + 1) * (pred_a + 1)) == rate)
   break;
 }





 if ((pred_s > pred_s_max) || (pred_a > pred_a_max)) {
  pred_a = pred_a_max;
  pred_s = (rate / (pred_a + 1)) - 1;

  dev_warn(&pdev->dev, "rtc_ck is %s\n",
    (rate < ((pred_a + 1) * (pred_s + 1))) ?
    "fast" : "slow");
 }

 stm32_rtc_wpr_unlock(rtc);

 ret = stm32_rtc_enter_init_mode(rtc);
 if (ret) {
  dev_err(&pdev->dev,
   "Can't enter in init mode. Prescaler config failed.\n");
  goto end;
 }

 prer = (pred_s << STM32_RTC_PRER_PRED_S_SHIFT) & STM32_RTC_PRER_PRED_S;
 writel_relaxed(prer, rtc->base + regs->prer);
 prer |= (pred_a << STM32_RTC_PRER_PRED_A_SHIFT) & STM32_RTC_PRER_PRED_A;
 writel_relaxed(prer, rtc->base + regs->prer);


 cr = readl_relaxed(rtc->base + regs->cr);
 cr &= ~STM32_RTC_CR_FMT;
 writel_relaxed(cr, rtc->base + regs->cr);

 stm32_rtc_exit_init_mode(rtc);

 ret = stm32_rtc_wait_sync(rtc);
end:
 stm32_rtc_wpr_lock(rtc);

 return ret;
}
