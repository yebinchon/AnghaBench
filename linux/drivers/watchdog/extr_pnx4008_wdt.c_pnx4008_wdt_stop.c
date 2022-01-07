
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 int WDTIM_CTRL (int ) ;
 int io_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int wdt_base ;
 int writel (int ,int ) ;

__attribute__((used)) static int pnx4008_wdt_stop(struct watchdog_device *wdd)
{
 spin_lock(&io_lock);

 writel(0, WDTIM_CTRL(wdt_base));

 spin_unlock(&io_lock);
 return 0;
}
