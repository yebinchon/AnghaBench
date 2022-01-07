
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pic32_wdt {int rst_base; } ;


 int PIC32_CLR (int ) ;
 int RESETCON_WDT_TIMEOUT ;
 int readl (int ) ;
 int writel (int,int ) ;

__attribute__((used)) static int pic32_wdt_bootstatus(struct pic32_wdt *wdt)
{
 u32 v = readl(wdt->rst_base);

 writel(RESETCON_WDT_TIMEOUT, PIC32_CLR(wdt->rst_base));

 return v & RESETCON_WDT_TIMEOUT;
}
