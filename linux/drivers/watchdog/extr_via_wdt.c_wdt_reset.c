
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int VIA_WDT_TRIGGER ;
 unsigned int readl (int ) ;
 int wdt_mem ;
 int writel (unsigned int,int ) ;

__attribute__((used)) static inline void wdt_reset(void)
{
 unsigned int ctl = readl(wdt_mem);

 writel(ctl | VIA_WDT_TRIGGER, wdt_mem);
}
