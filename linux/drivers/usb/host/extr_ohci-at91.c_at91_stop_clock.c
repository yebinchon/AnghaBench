
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ohci_at91_priv {int clocked; int hclk; int iclk; int fclk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void at91_stop_clock(struct ohci_at91_priv *ohci_at91)
{
 if (!ohci_at91->clocked)
  return;

 clk_disable_unprepare(ohci_at91->fclk);
 clk_disable_unprepare(ohci_at91->iclk);
 clk_disable_unprepare(ohci_at91->hclk);
 ohci_at91->clocked = 0;
}
