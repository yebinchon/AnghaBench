
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sci_port_configuration_agent {int phy_configured_mask; int phy_ready_mask; int timer_pending; TYPE_1__* phy_valid_port_range; int * link_down_handler; int * link_up_handler; } ;
struct TYPE_2__ {scalar_t__ max_index; scalar_t__ min_index; } ;


 size_t SCI_MAX_PORTS ;

void sci_port_configuration_agent_construct(
 struct sci_port_configuration_agent *port_agent)
{
 u32 index;

 port_agent->phy_configured_mask = 0x00;
 port_agent->phy_ready_mask = 0x00;

 port_agent->link_up_handler = ((void*)0);
 port_agent->link_down_handler = ((void*)0);

 port_agent->timer_pending = 0;

 for (index = 0; index < SCI_MAX_PORTS; index++) {
  port_agent->phy_valid_port_range[index].min_index = 0;
  port_agent->phy_valid_port_range[index].max_index = 0;
 }
}
