
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_hcd_mv {int phy; } ;


 int ehci_clock_enable (struct ehci_hcd_mv*) ;
 int phy_init (int ) ;

__attribute__((used)) static int mv_ehci_enable(struct ehci_hcd_mv *ehci_mv)
{
 ehci_clock_enable(ehci_mv);
 return phy_init(ehci_mv->phy);
}
