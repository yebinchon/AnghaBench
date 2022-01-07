
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ data_role; int send_discover; scalar_t__ pd_capable; } ;


 int CMD_DISCOVER_IDENT ;
 scalar_t__ TYPEC_HOST ;
 int USB_SID_PD ;
 int tcpm_send_vdm (struct tcpm_port*,int ,int ,int *,int ) ;

__attribute__((used)) static void tcpm_check_send_discover(struct tcpm_port *port)
{
 if (port->data_role == TYPEC_HOST && port->send_discover &&
     port->pd_capable) {
  tcpm_send_vdm(port, USB_SID_PD, CMD_DISCOVER_IDENT, ((void*)0), 0);
  port->send_discover = 0;
 }
}
