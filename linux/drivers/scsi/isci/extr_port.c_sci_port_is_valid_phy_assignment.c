
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sci_user_parameters {TYPE_1__* phys; } ;
struct isci_port {int physical_port_index; scalar_t__* phy_table; struct isci_host* owning_controller; } ;
struct isci_host {struct sci_user_parameters user_parameters; } ;
struct TYPE_2__ {scalar_t__ max_speed_generation; } ;


 int SCI_MAX_PHYS ;

bool sci_port_is_valid_phy_assignment(struct isci_port *iport, u32 phy_index)
{
 struct isci_host *ihost = iport->owning_controller;
 struct sci_user_parameters *user = &ihost->user_parameters;


 u32 existing_phy_index = SCI_MAX_PHYS;
 u32 index;

 if ((iport->physical_port_index == 1) && (phy_index != 1))
  return 0;

 if (iport->physical_port_index == 3 && phy_index != 3)
  return 0;

 if (iport->physical_port_index == 2 &&
     (phy_index == 0 || phy_index == 1))
  return 0;

 for (index = 0; index < SCI_MAX_PHYS; index++)
  if (iport->phy_table[index] && index != phy_index)
   existing_phy_index = index;




 if (existing_phy_index < SCI_MAX_PHYS &&
     user->phys[phy_index].max_speed_generation !=
     user->phys[existing_phy_index].max_speed_generation)
  return 0;

 return 1;
}
