
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_rtc_dev {int alarm_clk_enabled; int alarm_lock; int clk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pic32_rtc_alarm_clk_enable(struct pic32_rtc_dev *pdata,
           bool enable)
{
 unsigned long flags;

 spin_lock_irqsave(&pdata->alarm_lock, flags);
 if (enable) {
  if (!pdata->alarm_clk_enabled) {
   clk_enable(pdata->clk);
   pdata->alarm_clk_enabled = 1;
  }
 } else {
  if (pdata->alarm_clk_enabled) {
   clk_disable(pdata->clk);
   pdata->alarm_clk_enabled = 0;
  }
 }
 spin_unlock_irqrestore(&pdata->alarm_lock, flags);
}
