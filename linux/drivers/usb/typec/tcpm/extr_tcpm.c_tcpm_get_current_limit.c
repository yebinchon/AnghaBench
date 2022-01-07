
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct tcpm_port {int cc2; int cc1; TYPE_1__* tcpc; scalar_t__ polarity; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
struct TYPE_2__ {int (* get_current_limit ) (TYPE_1__*) ;} ;





 int stub1 (TYPE_1__*) ;

__attribute__((used)) static u32 tcpm_get_current_limit(struct tcpm_port *port)
{
 enum typec_cc_status cc;
 u32 limit;

 cc = port->polarity ? port->cc2 : port->cc1;
 switch (cc) {
 case 130:
  limit = 1500;
  break;
 case 129:
  limit = 3000;
  break;
 case 128:
 default:
  if (port->tcpc->get_current_limit)
   limit = port->tcpc->get_current_limit(port->tcpc);
  else
   limit = 0;
  break;
 }

 return limit;
}
