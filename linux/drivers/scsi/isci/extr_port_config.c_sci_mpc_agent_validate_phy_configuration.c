
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u8 ;
typedef int u32 ;
struct sci_sas_address {scalar_t__ low; scalar_t__ high; } ;
struct sci_port_configuration_agent {TYPE_3__* phy_valid_port_range; } ;
struct TYPE_5__ {TYPE_1__* ports; } ;
struct isci_host {int * phys; int * ports; TYPE_2__ oem_parameters; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_6__ {size_t min_index; size_t max_index; } ;
struct TYPE_4__ {int phy_mask; } ;


 int SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 size_t SCI_MAX_PHYS ;
 size_t SCI_MAX_PORTS ;
 int sci_phy_get_sas_address (int *,struct sci_sas_address*) ;
 int sci_port_add_phy (int *,int *) ;
 int sci_port_configuration_agent_validate_ports (struct isci_host*,struct sci_port_configuration_agent*) ;
 scalar_t__ sci_sas_address_compare (struct sci_sas_address,struct sci_sas_address) ;

__attribute__((used)) static enum sci_status
sci_mpc_agent_validate_phy_configuration(struct isci_host *ihost,
           struct sci_port_configuration_agent *port_agent)
{
 u32 phy_mask;
 u32 assigned_phy_mask;
 struct sci_sas_address sas_address;
 struct sci_sas_address phy_assigned_address;
 u8 port_index;
 u8 phy_index;

 assigned_phy_mask = 0;
 sas_address.high = 0;
 sas_address.low = 0;

 for (port_index = 0; port_index < SCI_MAX_PORTS; port_index++) {
  phy_mask = ihost->oem_parameters.ports[port_index].phy_mask;

  if (!phy_mask)
   continue;



  if ((phy_mask & ~assigned_phy_mask) == 0) {
   return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
  }


  for (phy_index = 0; phy_index < SCI_MAX_PHYS; phy_index++) {
   if ((phy_mask & (1 << phy_index)) == 0)
    continue;
   sci_phy_get_sas_address(&ihost->phys[phy_index],
           &sas_address);





   port_agent->phy_valid_port_range[phy_index].min_index = port_index;
   port_agent->phy_valid_port_range[phy_index].max_index = phy_index;

   if (phy_index != port_index) {
    return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }

   break;
  }






  for (; phy_index < SCI_MAX_PHYS; phy_index++) {
   if ((phy_mask & (1 << phy_index)) == 0)
    continue;
   sci_phy_get_sas_address(&ihost->phys[phy_index],
           &phy_assigned_address);

   if (sci_sas_address_compare(sas_address, phy_assigned_address) != 0) {



    return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
   }

   port_agent->phy_valid_port_range[phy_index].min_index = port_index;
   port_agent->phy_valid_port_range[phy_index].max_index = phy_index;

   sci_port_add_phy(&ihost->ports[port_index],
           &ihost->phys[phy_index]);

   assigned_phy_mask |= (1 << phy_index);
  }

 }

 return sci_port_configuration_agent_validate_ports(ihost, port_agent);
}
