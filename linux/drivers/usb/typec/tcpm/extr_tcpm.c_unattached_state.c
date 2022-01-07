
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ port_type; scalar_t__ pwr_role; } ;
typedef enum tcpm_state { ____Placeholder_tcpm_state } tcpm_state ;


 int SNK_UNATTACHED ;
 int SRC_UNATTACHED ;
 scalar_t__ TYPEC_PORT_DRP ;
 scalar_t__ TYPEC_PORT_SRC ;
 scalar_t__ TYPEC_SOURCE ;

__attribute__((used)) static inline enum tcpm_state unattached_state(struct tcpm_port *port)
{
 if (port->port_type == TYPEC_PORT_DRP) {
  if (port->pwr_role == TYPEC_SOURCE)
   return SRC_UNATTACHED;
  else
   return SNK_UNATTACHED;
 } else if (port->port_type == TYPEC_PORT_SRC) {
  return SRC_UNATTACHED;
 }

 return SNK_UNATTACHED;
}
