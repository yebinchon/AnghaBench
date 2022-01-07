
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int attached; scalar_t__ cc2; int pd_capable; int send_discover; int * partner; } ;


 scalar_t__ TYPEC_CC_OPEN ;
 int TYPEC_DEVICE ;
 int TYPEC_POLARITY_CC1 ;
 int TYPEC_POLARITY_CC2 ;
 int TYPEC_SINK ;
 int tcpm_set_polarity (struct tcpm_port*,int ) ;
 int tcpm_set_roles (struct tcpm_port*,int,int ,int ) ;

__attribute__((used)) static int tcpm_snk_attach(struct tcpm_port *port)
{
 int ret;

 if (port->attached)
  return 0;

 ret = tcpm_set_polarity(port, port->cc2 != TYPEC_CC_OPEN ?
    TYPEC_POLARITY_CC2 : TYPEC_POLARITY_CC1);
 if (ret < 0)
  return ret;

 ret = tcpm_set_roles(port, 1, TYPEC_SINK, TYPEC_DEVICE);
 if (ret < 0)
  return ret;

 port->pd_capable = 0;

 port->partner = ((void*)0);

 port->attached = 1;
 port->send_discover = 1;

 return 0;
}
