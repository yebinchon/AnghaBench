
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int vbus_charge; scalar_t__ vbus_source; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,scalar_t__,int) ;} ;


 int EINVAL ;
 int stub1 (TYPE_1__*,scalar_t__,int) ;
 int tcpm_log (struct tcpm_port*,char*,scalar_t__,int) ;

__attribute__((used)) static int tcpm_set_charge(struct tcpm_port *port, bool charge)
{
 int ret;

 if (charge && port->vbus_source)
  return -EINVAL;

 if (charge != port->vbus_charge) {
  tcpm_log(port, "vbus=%d charge:=%d", port->vbus_source, charge);
  ret = port->tcpc->set_vbus(port->tcpc, port->vbus_source,
        charge);
  if (ret < 0)
   return ret;
 }
 port->vbus_charge = charge;
 return 0;
}
