
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd_mv {int clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static void ehci_clock_disable(struct ehci_hcd_mv *ehci_mv)
{
 clk_disable_unprepare(ehci_mv->clk);
}
