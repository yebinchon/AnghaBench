
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_wdt {scalar_t__ regs; } ;


 scalar_t__ WDTCON_REG ;
 int WDTCON_WIN_EN ;
 int readl (scalar_t__) ;

__attribute__((used)) static inline bool pic32_wdt_is_win_enabled(struct pic32_wdt *wdt)
{
 return !!(readl(wdt->regs + WDTCON_REG) & WDTCON_WIN_EN);
}
