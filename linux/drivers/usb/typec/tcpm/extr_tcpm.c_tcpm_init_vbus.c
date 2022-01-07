
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int vbus_source; int vbus_charge; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,int,int) ;} ;


 int stub1 (TYPE_1__*,int,int) ;

__attribute__((used)) static int tcpm_init_vbus(struct tcpm_port *port)
{
 int ret;

 ret = port->tcpc->set_vbus(port->tcpc, 0, 0);
 port->vbus_source = 0;
 port->vbus_charge = 0;
 return ret;
}
