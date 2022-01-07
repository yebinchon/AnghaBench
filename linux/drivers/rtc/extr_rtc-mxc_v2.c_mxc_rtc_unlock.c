
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mxc_rtc_data {int lock; int clk; } ;


 int clk_disable (int ) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int mxc_rtc_unlock(struct mxc_rtc_data *const pdata)
{
 clk_disable(pdata->clk);
 spin_unlock_irq(&pdata->lock);
 return 0;
}
