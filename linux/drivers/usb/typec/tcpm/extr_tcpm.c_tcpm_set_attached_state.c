
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int data_role; int pwr_role; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_roles ) (TYPE_1__*,int,int ,int ) ;} ;


 int stub1 (TYPE_1__*,int,int ,int ) ;

__attribute__((used)) static int tcpm_set_attached_state(struct tcpm_port *port, bool attached)
{
 return port->tcpc->set_roles(port->tcpc, attached, port->pwr_role,
         port->data_role);
}
