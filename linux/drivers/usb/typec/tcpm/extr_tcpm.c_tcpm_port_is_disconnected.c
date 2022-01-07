
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ cc1; scalar_t__ cc2; scalar_t__ polarity; scalar_t__ attached; } ;


 scalar_t__ TYPEC_CC_OPEN ;
 scalar_t__ TYPEC_POLARITY_CC1 ;
 scalar_t__ TYPEC_POLARITY_CC2 ;

__attribute__((used)) static bool tcpm_port_is_disconnected(struct tcpm_port *port)
{
 return (!port->attached && port->cc1 == TYPEC_CC_OPEN &&
  port->cc2 == TYPEC_CC_OPEN) ||
        (port->attached && ((port->polarity == TYPEC_POLARITY_CC1 &&
        port->cc1 == TYPEC_CC_OPEN) ||
       (port->polarity == TYPEC_POLARITY_CC2 &&
        port->cc2 == TYPEC_CC_OPEN)));
}
