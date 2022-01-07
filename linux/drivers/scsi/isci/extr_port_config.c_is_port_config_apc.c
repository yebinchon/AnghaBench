
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ link_up_handler; } ;
struct isci_host {TYPE_1__ port_agent; } ;


 scalar_t__ sci_apc_agent_link_up ;

bool is_port_config_apc(struct isci_host *ihost)
{
 return ihost->port_agent.link_up_handler == sci_apc_agent_link_up;
}
