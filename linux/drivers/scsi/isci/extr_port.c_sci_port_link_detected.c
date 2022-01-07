
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {scalar_t__ logical_port_index; int * port_pe_configuration_register; struct isci_host* owning_controller; } ;
struct isci_phy {scalar_t__ protocol; size_t phy_index; } ;
struct isci_host {struct isci_port* ports; } ;


 scalar_t__ SAS_PROTOCOL_SATA ;
 scalar_t__ SCIC_SDS_DUMMY_PORT ;
 int sci_port_invalid_link_up (struct isci_port*,struct isci_phy*) ;
 scalar_t__ sci_port_is_wide (struct isci_port*) ;
 int writel (size_t,int *) ;

bool sci_port_link_detected(struct isci_port *iport, struct isci_phy *iphy)
{
 if ((iport->logical_port_index != SCIC_SDS_DUMMY_PORT) &&
     (iphy->protocol == SAS_PROTOCOL_SATA)) {
  if (sci_port_is_wide(iport)) {
   sci_port_invalid_link_up(iport, iphy);
   return 0;
  } else {
   struct isci_host *ihost = iport->owning_controller;
   struct isci_port *dst_port = &(ihost->ports[iphy->phy_index]);
   writel(iphy->phy_index,
          &dst_port->port_pe_configuration_register[iphy->phy_index]);
  }
 }

 return 1;
}
