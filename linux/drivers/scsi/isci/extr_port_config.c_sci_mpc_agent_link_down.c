
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_port_configuration_agent {int phy_ready_mask; int phy_configured_mask; int timer_pending; int timer; } ;
struct isci_port {int dummy; } ;
struct isci_phy {int phy_index; } ;
struct isci_host {int dummy; } ;


 int SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT ;
 int sci_mod_timer (int *,int ) ;
 int sci_port_link_down (struct isci_port*,struct isci_phy*) ;

__attribute__((used)) static void sci_mpc_agent_link_down(
 struct isci_host *ihost,
 struct sci_port_configuration_agent *port_agent,
 struct isci_port *iport,
 struct isci_phy *iphy)
{
 if (iport != ((void*)0)) {







  port_agent->phy_ready_mask &= ~(1 << iphy->phy_index);
  port_agent->phy_configured_mask &= ~(1 << iphy->phy_index);







  if ((port_agent->phy_configured_mask == 0x0000) &&
      (port_agent->phy_ready_mask != 0x0000) &&
      !port_agent->timer_pending) {
   port_agent->timer_pending = 1;

   sci_mod_timer(&port_agent->timer,
          SCIC_SDS_MPC_RECONFIGURATION_TIMEOUT);
  }

  sci_port_link_down(iport, iphy);
 }
}
