
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {struct isci_phy** phy_table; int physical_port_index; int logical_port_index; } ;
struct isci_phy {size_t phy_index; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;


 int SCI_FAILURE ;
 int SCI_SUCCESS ;
 int phy_get_non_dummy_port (struct isci_phy*) ;
 int sci_phy_set_port (struct isci_phy*,struct isci_port*) ;
 scalar_t__ sci_port_is_valid_phy_assignment (struct isci_port*,size_t) ;

__attribute__((used)) static enum sci_status sci_port_set_phy(struct isci_port *iport, struct isci_phy *iphy)
{




 if (!iport->phy_table[iphy->phy_index] &&
     !phy_get_non_dummy_port(iphy) &&
     sci_port_is_valid_phy_assignment(iport, iphy->phy_index)) {



  iport->logical_port_index = iport->physical_port_index;
  iport->phy_table[iphy->phy_index] = iphy;
  sci_phy_set_port(iphy, iport);

  return SCI_SUCCESS;
 }

 return SCI_FAILURE;
}
