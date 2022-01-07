
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int vconn_role; int typec_port; TYPE_1__* tcpc; } ;
struct TYPE_2__ {int (* set_vconn ) (TYPE_1__*,int) ;} ;


 int TYPEC_SINK ;
 int TYPEC_SOURCE ;
 int stub1 (TYPE_1__*,int) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;
 int typec_set_vconn_role (int ,int ) ;

__attribute__((used)) static int tcpm_set_vconn(struct tcpm_port *port, bool enable)
{
 int ret;

 tcpm_log(port, "vconn:=%d", enable);

 ret = port->tcpc->set_vconn(port->tcpc, enable);
 if (!ret) {
  port->vconn_role = enable ? TYPEC_SOURCE : TYPEC_SINK;
  typec_set_vconn_role(port->typec_port, port->vconn_role);
 }

 return ret;
}
