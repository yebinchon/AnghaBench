
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct isci_port {int active_phy_mask; struct isci_host* owning_controller; } ;
struct isci_phy {scalar_t__ protocol; int phy_index; } ;
struct isci_host {int dummy; } ;


 int PF_NOTIFY ;
 int PF_RESUME ;
 scalar_t__ SAS_PROTOCOL_SATA ;
 int isci_port_link_up (struct isci_host*,struct isci_port*,struct isci_phy*) ;
 int sci_controller_clear_invalid_phy (struct isci_host*,struct isci_phy*) ;
 int sci_phy_resume (struct isci_phy*) ;

__attribute__((used)) static void sci_port_activate_phy(struct isci_port *iport,
      struct isci_phy *iphy,
      u8 flags)
{
 struct isci_host *ihost = iport->owning_controller;

 if (iphy->protocol != SAS_PROTOCOL_SATA && (flags & PF_RESUME))
  sci_phy_resume(iphy);

 iport->active_phy_mask |= 1 << iphy->phy_index;

 sci_controller_clear_invalid_phy(ihost, iphy);

 if (flags & PF_NOTIFY)
  isci_port_link_up(ihost, iport, iphy);
}
