
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct sci_port_configuration_agent {int phy_configured_mask; TYPE_1__* phy_valid_port_range; } ;
struct isci_port {int active_phy_mask; int physical_port_index; } ;
struct isci_phy {size_t phy_index; } ;
struct isci_host {struct isci_port* ports; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
typedef enum SCIC_SDS_APC_ACTIVITY { ____Placeholder_SCIC_SDS_APC_ACTIVITY } SCIC_SDS_APC_ACTIVITY ;
struct TYPE_2__ {size_t min_index; size_t max_index; } ;





 int SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION ;
 int SCI_SUCCESS ;
 int sci_apc_agent_start_timer (struct sci_port_configuration_agent*,int ) ;
 int sci_port_add_phy (struct isci_port*,struct isci_phy*) ;
 struct isci_port* sci_port_configuration_agent_find_port (struct isci_host*,struct isci_phy*) ;
 scalar_t__ sci_port_is_valid_phy_assignment (struct isci_port*,size_t) ;

__attribute__((used)) static void sci_apc_agent_configure_ports(struct isci_host *ihost,
            struct sci_port_configuration_agent *port_agent,
            struct isci_phy *iphy,
            bool start_timer)
{
 u8 port_index;
 enum sci_status status;
 struct isci_port *iport;
 enum SCIC_SDS_APC_ACTIVITY apc_activity = 129;

 iport = sci_port_configuration_agent_find_port(ihost, iphy);

 if (iport) {
  if (sci_port_is_valid_phy_assignment(iport, iphy->phy_index))
   apc_activity = 130;
  else
   apc_activity = 129;
 } else {






  for (port_index = port_agent->phy_valid_port_range[iphy->phy_index].min_index;
       port_index <= port_agent->phy_valid_port_range[iphy->phy_index].max_index;
       port_index++) {

   iport = &ihost->ports[port_index];


   if (sci_port_is_valid_phy_assignment(iport, iphy->phy_index)) {




    if (iport->active_phy_mask > (1 << iphy->phy_index)) {
     apc_activity = 129;
     break;
    }





    if (iport->physical_port_index == iphy->phy_index) {





     if (apc_activity != 128) {
      apc_activity = 130;
     }

     break;
    }





    if (iport->active_phy_mask == 0) {
     apc_activity = 128;
    }
   } else if (iport->active_phy_mask != 0) {




    apc_activity = 129;
   }
  }
 }
 if (
  (start_timer == 0)
  && (apc_activity == 128)
  ) {
  apc_activity = 130;
 }

 switch (apc_activity) {
 case 130:
  status = sci_port_add_phy(iport, iphy);

  if (status == SCI_SUCCESS) {
   port_agent->phy_configured_mask |= (1 << iphy->phy_index);
  }
  break;

 case 128:
  sci_apc_agent_start_timer(port_agent,
       SCIC_SDS_APC_WAIT_LINK_UP_NOTIFICATION);
  break;

 case 129:
 default:

  break;
 }
}
