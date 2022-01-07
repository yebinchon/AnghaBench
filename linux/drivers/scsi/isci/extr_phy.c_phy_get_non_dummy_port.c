
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {scalar_t__ physical_port_index; } ;
struct isci_phy {struct isci_port* owning_port; } ;


 scalar_t__ SCIC_SDS_DUMMY_PORT ;

struct isci_port *phy_get_non_dummy_port(struct isci_phy *iphy)
{
 struct isci_port *iport = iphy->owning_port;

 if (iport->physical_port_index == SCIC_SDS_DUMMY_PORT)
  return ((void*)0);

 return iphy->owning_port;
}
