
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int vconn_role; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vconn ) (TYPE_1__*,int) ;} ;


 int TYPEC_SINK ;
 int stub1 (TYPE_1__*,int) ;

__attribute__((used)) static int tcpm_init_vconn(struct tcpm_port *port)
{
 int ret;

 ret = port->tcpc->set_vconn(port->tcpc, 0);
 port->vconn_role = TYPEC_SINK;
 return ret;
}
