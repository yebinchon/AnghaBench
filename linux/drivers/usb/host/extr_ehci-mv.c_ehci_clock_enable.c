
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd_mv {int clk; } ;


 int clk_prepare_enable (int ) ;

__attribute__((used)) static void ehci_clock_enable(struct ehci_hcd_mv *ehci_mv)
{
 clk_prepare_enable(ehci_mv->clk);
}
