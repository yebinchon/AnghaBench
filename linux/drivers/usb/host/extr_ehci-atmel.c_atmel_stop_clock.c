
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_ehci_priv {int clocked; int uclk; int iclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void atmel_stop_clock(struct atmel_ehci_priv *atmel_ehci)
{
 if (!atmel_ehci->clocked)
  return;

 clk_disable_unprepare(atmel_ehci->iclk);
 clk_disable_unprepare(atmel_ehci->uclk);
 atmel_ehci->clocked = 0;
}
