
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct isci_port {struct isci_phy** phy_table; } ;
struct isci_phy {int dummy; } ;


 size_t SCI_MAX_PHYS ;
 scalar_t__ sci_port_active_phy (struct isci_port*,struct isci_phy*) ;

__attribute__((used)) static struct isci_phy *sci_port_get_a_connected_phy(struct isci_port *iport)
{
 u32 index;
 struct isci_phy *iphy;

 for (index = 0; index < SCI_MAX_PHYS; index++) {



  iphy = iport->phy_table[index];
  if (iphy && sci_port_active_phy(iport, iphy))
   return iphy;
 }

 return ((void*)0);
}
