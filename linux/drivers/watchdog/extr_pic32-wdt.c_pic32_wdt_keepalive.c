
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_wdt {scalar_t__ regs; } ;


 int WDTCON_CLR_KEY ;
 scalar_t__ WDTCON_REG ;
 int writew (int ,scalar_t__) ;

__attribute__((used)) static void pic32_wdt_keepalive(struct pic32_wdt *wdt)
{

 writew(WDTCON_CLR_KEY, wdt->regs + WDTCON_REG + 2);
}
