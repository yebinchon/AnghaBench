
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tcpm_port {int vbus_never_low; TYPE_1__* tcpc; scalar_t__ vbus_present; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
struct TYPE_4__ {scalar_t__ (* get_cc ) (TYPE_1__*,int*,int*) ;scalar_t__ (* get_vbus ) (TYPE_1__*) ;int (* init ) (TYPE_1__*) ;} ;


 int PORT_RESET ;
 int _tcpm_cc_change (struct tcpm_port*,int,int) ;
 int stub1 (TYPE_1__*) ;
 scalar_t__ stub2 (TYPE_1__*) ;
 scalar_t__ stub3 (TYPE_1__*,int*,int*) ;
 int tcpm_default_state (struct tcpm_port*) ;
 int tcpm_reset_port (struct tcpm_port*) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;

__attribute__((used)) static void tcpm_init(struct tcpm_port *port)
{
 enum typec_cc_status cc1, cc2;

 port->tcpc->init(port->tcpc);

 tcpm_reset_port(port);






 port->vbus_present = port->tcpc->get_vbus(port->tcpc);
 if (port->vbus_present)
  port->vbus_never_low = 1;

 tcpm_set_state(port, tcpm_default_state(port), 0);

 if (port->tcpc->get_cc(port->tcpc, &cc1, &cc2) == 0)
  _tcpm_cc_change(port, cc1, cc2);





 tcpm_set_state(port, PORT_RESET, 0);
}
