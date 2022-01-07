
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sci_sas_address {int dummy; } ;
struct sci_port_configuration_agent {TYPE_1__* phy_valid_port_range; } ;
struct isci_host {int * phys; } ;
typedef enum sci_status { ____Placeholder_sci_status } sci_status ;
struct TYPE_2__ {int max_index; int min_index; } ;


 int SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION ;
 int SCI_SUCCESS ;
 int sci_phy_get_sas_address (int *,struct sci_sas_address*) ;
 scalar_t__ sci_sas_address_compare (struct sci_sas_address,struct sci_sas_address) ;

__attribute__((used)) static enum sci_status sci_port_configuration_agent_validate_ports(
 struct isci_host *ihost,
 struct sci_port_configuration_agent *port_agent)
{
 struct sci_sas_address first_address;
 struct sci_sas_address second_address;




 if (port_agent->phy_valid_port_range[0].max_index != 0 ||
     port_agent->phy_valid_port_range[1].max_index != 1 ||
     port_agent->phy_valid_port_range[2].max_index != 2 ||
     port_agent->phy_valid_port_range[3].max_index != 3)
  return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;




 if (port_agent->phy_valid_port_range[0].min_index == 0 &&
     port_agent->phy_valid_port_range[1].min_index == 0 &&
     port_agent->phy_valid_port_range[2].min_index == 0 &&
     port_agent->phy_valid_port_range[3].min_index == 0)
  return SCI_SUCCESS;






 if (port_agent->phy_valid_port_range[2].min_index == 1) {
  return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
 }





 sci_phy_get_sas_address(&ihost->phys[0], &first_address);
 sci_phy_get_sas_address(&ihost->phys[3], &second_address);

 if (sci_sas_address_compare(first_address, second_address) == 0) {
  return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
 }





 if (port_agent->phy_valid_port_range[0].min_index == 0 &&
     port_agent->phy_valid_port_range[1].min_index == 1) {
  sci_phy_get_sas_address(&ihost->phys[0], &first_address);
  sci_phy_get_sas_address(&ihost->phys[2], &second_address);

  if (sci_sas_address_compare(first_address, second_address) == 0) {
   return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
  }
 }





 if (port_agent->phy_valid_port_range[2].min_index == 2 &&
     port_agent->phy_valid_port_range[3].min_index == 3) {
  sci_phy_get_sas_address(&ihost->phys[1], &first_address);
  sci_phy_get_sas_address(&ihost->phys[3], &second_address);

  if (sci_sas_address_compare(first_address, second_address) == 0) {
   return SCI_FAILURE_UNSUPPORTED_PORT_CONFIGURATION;
  }
 }

 return SCI_SUCCESS;
}
