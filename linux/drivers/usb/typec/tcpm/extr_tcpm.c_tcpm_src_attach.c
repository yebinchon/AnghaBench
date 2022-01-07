
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tcpm_port {scalar_t__ cc2; int attached; scalar_t__ cc1; int pd_capable; int send_discover; TYPE_1__* tcpc; int * partner; } ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;
struct TYPE_3__ {int (* set_pd_rx ) (TYPE_1__*,int) ;} ;


 scalar_t__ TYPEC_CC_RA ;
 scalar_t__ TYPEC_CC_RD ;
 int TYPEC_HOST ;
 int TYPEC_ORIENTATION_NONE ;
 int TYPEC_POLARITY_CC1 ;
 int TYPEC_POLARITY_CC2 ;
 int TYPEC_SOURCE ;
 int TYPEC_STATE_SAFE ;
 int USB_ROLE_NONE ;
 int stub1 (TYPE_1__*,int) ;
 int stub2 (TYPE_1__*,int) ;
 int tcpm_mux_set (struct tcpm_port*,int ,int ,int ) ;
 int tcpm_set_polarity (struct tcpm_port*,int) ;
 int tcpm_set_roles (struct tcpm_port*,int,int ,int ) ;
 int tcpm_set_vbus (struct tcpm_port*,int) ;
 int tcpm_set_vconn (struct tcpm_port*,int) ;

__attribute__((used)) static int tcpm_src_attach(struct tcpm_port *port)
{
 enum typec_cc_polarity polarity =
    port->cc2 == TYPEC_CC_RD ? TYPEC_POLARITY_CC2
        : TYPEC_POLARITY_CC1;
 int ret;

 if (port->attached)
  return 0;

 ret = tcpm_set_polarity(port, polarity);
 if (ret < 0)
  return ret;

 ret = tcpm_set_roles(port, 1, TYPEC_SOURCE, TYPEC_HOST);
 if (ret < 0)
  return ret;

 ret = port->tcpc->set_pd_rx(port->tcpc, 1);
 if (ret < 0)
  goto out_disable_mux;






 if ((polarity == TYPEC_POLARITY_CC1 && port->cc2 == TYPEC_CC_RA) ||
     (polarity == TYPEC_POLARITY_CC2 && port->cc1 == TYPEC_CC_RA)) {
  ret = tcpm_set_vconn(port, 1);
  if (ret < 0)
   goto out_disable_pd;
 }

 ret = tcpm_set_vbus(port, 1);
 if (ret < 0)
  goto out_disable_vconn;

 port->pd_capable = 0;

 port->partner = ((void*)0);

 port->attached = 1;
 port->send_discover = 1;

 return 0;

out_disable_vconn:
 tcpm_set_vconn(port, 0);
out_disable_pd:
 port->tcpc->set_pd_rx(port->tcpc, 0);
out_disable_mux:
 tcpm_mux_set(port, TYPEC_STATE_SAFE, USB_ROLE_NONE,
       TYPEC_ORIENTATION_NONE);
 return ret;
}
