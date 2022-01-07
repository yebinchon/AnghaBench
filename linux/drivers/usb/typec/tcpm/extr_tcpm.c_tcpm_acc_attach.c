
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int attached; int * partner; } ;


 int TYPEC_HOST ;
 int TYPEC_SOURCE ;
 int tcpm_set_roles (struct tcpm_port*,int,int ,int ) ;
 int tcpm_typec_connect (struct tcpm_port*) ;

__attribute__((used)) static int tcpm_acc_attach(struct tcpm_port *port)
{
 int ret;

 if (port->attached)
  return 0;

 ret = tcpm_set_roles(port, 1, TYPEC_SOURCE, TYPEC_HOST);
 if (ret < 0)
  return ret;

 port->partner = ((void*)0);

 tcpm_typec_connect(port);

 port->attached = 1;

 return 0;
}
