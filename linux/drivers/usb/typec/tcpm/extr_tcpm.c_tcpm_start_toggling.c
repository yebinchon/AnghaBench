
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int port_type; TYPE_1__* tcpc; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
struct TYPE_2__ {int (* start_toggling ) (TYPE_1__*,int ,int) ;} ;


 int stub1 (TYPE_1__*,int ,int) ;
 int tcpm_log_force (struct tcpm_port*,char*) ;

__attribute__((used)) static bool tcpm_start_toggling(struct tcpm_port *port, enum typec_cc_status cc)
{
 int ret;

 if (!port->tcpc->start_toggling)
  return 0;

 tcpm_log_force(port, "Start toggling");
 ret = port->tcpc->start_toggling(port->tcpc, port->port_type, cc);
 return ret == 0;
}
