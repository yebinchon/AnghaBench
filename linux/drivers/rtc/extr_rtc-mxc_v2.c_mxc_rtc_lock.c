
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_rtc_data {int lock; int clk; } ;


 int clk_enable (int ) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int mxc_rtc_lock(struct mxc_rtc_data *const pdata)
{
 int ret;

 spin_lock_irq(&pdata->lock);
 ret = clk_enable(pdata->clk);
 if (ret) {
  spin_unlock_irq(&pdata->lock);
  return ret;
 }
 return 0;
}
