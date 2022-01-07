
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct watchdog_device {int dummy; } ;


 unsigned int VIA_WDT_RUNNING ;
 unsigned int readl (int ) ;
 int wdt_mem ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static int wdt_stop(struct watchdog_device *wdd)
{
 unsigned int ctl = readl(wdt_mem);

 writel(ctl & ~VIA_WDT_RUNNING, wdt_mem);
 return 0;
}
