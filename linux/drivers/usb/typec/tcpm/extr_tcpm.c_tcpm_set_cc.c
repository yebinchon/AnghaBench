
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int cc_req; TYPE_1__* tcpc; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
struct TYPE_2__ {int (* set_cc ) (TYPE_1__*,int) ;} ;


 int stub1 (TYPE_1__*,int) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;

__attribute__((used)) static void tcpm_set_cc(struct tcpm_port *port, enum typec_cc_status cc)
{
 tcpm_log(port, "cc:=%d", cc);
 port->cc_req = cc;
 port->tcpc->set_cc(port->tcpc, cc);
}
