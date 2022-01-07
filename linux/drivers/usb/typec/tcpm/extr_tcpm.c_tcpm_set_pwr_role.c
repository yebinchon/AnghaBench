
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int pwr_role; int typec_port; int data_role; TYPE_1__* tcpc; } ;
typedef enum typec_role { ____Placeholder_typec_role } typec_role ;
struct TYPE_2__ {int (* set_roles ) (TYPE_1__*,int,int,int ) ;} ;


 int stub1 (TYPE_1__*,int,int,int ) ;
 int typec_set_pwr_role (int ,int) ;

__attribute__((used)) static int tcpm_set_pwr_role(struct tcpm_port *port, enum typec_role role)
{
 int ret;

 ret = port->tcpc->set_roles(port->tcpc, 1, role,
        port->data_role);
 if (ret < 0)
  return ret;

 port->pwr_role = role;
 typec_set_pwr_role(port->typec_port, role);

 return 0;
}
