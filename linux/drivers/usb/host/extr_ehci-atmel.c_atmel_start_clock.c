
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_ehci_priv {int clocked; int iclk; int uclk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static void atmel_start_clock(struct atmel_ehci_priv *atmel_ehci)
{
 if (atmel_ehci->clocked)
  return;

 clk_prepare_enable(atmel_ehci->uclk);
 clk_prepare_enable(atmel_ehci->iclk);
 atmel_ehci->clocked = 1;
}
