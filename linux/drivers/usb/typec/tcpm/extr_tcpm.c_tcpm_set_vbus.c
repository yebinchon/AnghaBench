
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int vbus_source; scalar_t__ vbus_charge; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vbus ) (TYPE_1__*,int,scalar_t__) ;} ;


 int EINVAL ;
 int stub1 (TYPE_1__*,int,scalar_t__) ;
 int tcpm_log (struct tcpm_port*,char*,int,scalar_t__) ;

__attribute__((used)) static int tcpm_set_vbus(struct tcpm_port *port, bool enable)
{
 int ret;

 if (enable && port->vbus_charge)
  return -EINVAL;

 tcpm_log(port, "vbus:=%d charge=%d", enable, port->vbus_charge);

 ret = port->tcpc->set_vbus(port->tcpc, enable, port->vbus_charge);
 if (ret < 0)
  return ret;

 port->vbus_source = enable;
 return 0;
}
