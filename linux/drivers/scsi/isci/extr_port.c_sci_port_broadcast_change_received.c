
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isci_port {struct isci_host* owning_controller; } ;
struct isci_phy {int dummy; } ;
struct isci_host {int dummy; } ;


 int isci_port_bc_change_received (struct isci_host*,struct isci_port*,struct isci_phy*) ;

void sci_port_broadcast_change_received(struct isci_port *iport, struct isci_phy *iphy)
{
 struct isci_host *ihost = iport->owning_controller;


 isci_port_bc_change_received(ihost, iport, iphy);
}
