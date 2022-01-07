
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd_mv {int phy; } ;


 int ehci_clock_disable (struct ehci_hcd_mv*) ;
 int phy_exit (int ) ;

__attribute__((used)) static void mv_ehci_disable(struct ehci_hcd_mv *ehci_mv)
{
 phy_exit(ehci_mv->phy);
 ehci_clock_disable(ehci_mv);
}
