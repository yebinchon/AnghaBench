
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_at91_priv {int clocked; int fclk; int iclk; int hclk; } ;


 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,int) ;

__attribute__((used)) static void at91_start_clock(struct ohci_at91_priv *ohci_at91)
{
 if (ohci_at91->clocked)
  return;

 clk_set_rate(ohci_at91->fclk, 48000000);
 clk_prepare_enable(ohci_at91->hclk);
 clk_prepare_enable(ohci_at91->iclk);
 clk_prepare_enable(ohci_at91->fclk);
 ohci_at91->clocked = 1;
}
