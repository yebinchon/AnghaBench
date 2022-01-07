
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int cc1; int cc2; size_t state; int delayed_state; int max_wait; int vbus_present; int pd_capable; int polarity; } ;
typedef enum typec_cc_status { ____Placeholder_typec_cc_status } typec_cc_status ;
typedef enum tcpm_state { ____Placeholder_tcpm_state } tcpm_state ;
 int SNK_ATTACHED ;
 int SRC_TRY ;






 int TYPEC_CC_OPEN ;
 int tcpm_get_current_limit (struct tcpm_port*) ;
 int tcpm_log_force (struct tcpm_port*,char*,int,int,int,int,int ,int ,char*) ;
 int tcpm_port_is_audio (struct tcpm_port*) ;
 int tcpm_port_is_audio_detached (struct tcpm_port*) ;
 int tcpm_port_is_debug (struct tcpm_port*) ;
 scalar_t__ tcpm_port_is_disconnected (struct tcpm_port*) ;
 int tcpm_port_is_sink (struct tcpm_port*) ;
 int tcpm_port_is_source (struct tcpm_port*) ;
 int tcpm_set_current_limit (struct tcpm_port*,int ,int) ;
 int tcpm_set_state (struct tcpm_port*,int const,int ) ;
 int * tcpm_states ;
 int tcpm_try_src (struct tcpm_port*) ;
 int const unattached_state (struct tcpm_port*) ;

__attribute__((used)) static void _tcpm_cc_change(struct tcpm_port *port, enum typec_cc_status cc1,
       enum typec_cc_status cc2)
{
 enum typec_cc_status old_cc1, old_cc2;
 enum tcpm_state new_state;

 old_cc1 = port->cc1;
 old_cc2 = port->cc2;
 port->cc1 = cc1;
 port->cc2 = cc2;

 tcpm_log_force(port,
         "CC1: %u -> %u, CC2: %u -> %u [state %s, polarity %d, %s]",
         old_cc1, cc1, old_cc2, cc2, tcpm_states[port->state],
         port->polarity,
         tcpm_port_is_disconnected(port) ? "disconnected"
             : "connected");

 switch (port->state) {
 case 128:
  if (tcpm_port_is_debug(port) || tcpm_port_is_audio(port) ||
      tcpm_port_is_source(port))
   tcpm_set_state(port, 136, 0);
  else if (tcpm_port_is_sink(port))
   tcpm_set_state(port, 148, 0);
  break;
 case 129:
 case 157:
  if (tcpm_port_is_debug(port) || tcpm_port_is_audio(port) ||
      tcpm_port_is_source(port))
   tcpm_set_state(port, 136, 0);
  break;
 case 136:
  if (tcpm_port_is_disconnected(port) ||
      tcpm_port_is_audio_detached(port))
   tcpm_set_state(port, 129, 0);
  else if (cc1 != old_cc1 || cc2 != old_cc2)
   tcpm_set_state(port, 136, 0);
  break;
 case 137:
 case 134:
 case 135:
  if (tcpm_port_is_disconnected(port) ||
      !tcpm_port_is_source(port))
   tcpm_set_state(port, 129, 0);
  break;
 case 138:
  if (tcpm_port_is_sink(port))
   tcpm_set_state(port, 148, 0);
  break;
 case 148:
  if ((port->cc1 == TYPEC_CC_OPEN &&
       port->cc2 != TYPEC_CC_OPEN) ||
      (port->cc1 != TYPEC_CC_OPEN &&
       port->cc2 == TYPEC_CC_OPEN))
   new_state = 147;
  else if (tcpm_port_is_disconnected(port))
   new_state = 138;
  else
   break;
  if (new_state != port->delayed_state)
   tcpm_set_state(port, 148, 0);
  break;
 case 147:
  if (tcpm_port_is_disconnected(port))
   new_state = 138;
  else if (port->vbus_present)
   new_state = tcpm_try_src(port) ? SRC_TRY : SNK_ATTACHED;
  else
   new_state = 138;
  if (new_state != port->delayed_state)
   tcpm_set_state(port, 147, 0);
  break;
 case 144:
  if (tcpm_port_is_disconnected(port))
   tcpm_set_state(port, unattached_state(port), 0);
  else if (!port->pd_capable &&
    (cc1 != old_cc1 || cc2 != old_cc2))
   tcpm_set_current_limit(port,
            tcpm_get_current_limit(port),
            5000);
  break;

 case 156:
  if (cc1 == TYPEC_CC_OPEN || cc2 == TYPEC_CC_OPEN)
   tcpm_set_state(port, 155, 0);
  break;
 case 155:
  if (tcpm_port_is_audio(port))
   tcpm_set_state(port, 156, 0);
  break;

 case 154:
  if (cc1 == TYPEC_CC_OPEN || cc2 == TYPEC_CC_OPEN)
   tcpm_set_state(port, 157, 0);
  break;

 case 143:

  break;

 case 146:

  if (tcpm_port_is_disconnected(port))
   tcpm_set_state(port, 145, 0);
  break;
 case 145:
  break;

 case 133:

  if (!port->vbus_present && tcpm_port_is_source(port))
   tcpm_set_state(port, 132, 0);
  break;
 case 132:
  if (port->vbus_present || !tcpm_port_is_source(port))
   tcpm_set_state(port, 133, 0);
  break;
 case 139:
  if (!tcpm_port_is_sink(port)) {
   port->max_wait = 0;
   tcpm_set_state(port, 133, 0);
  }
  break;
 case 130:
  if (tcpm_port_is_source(port))
   tcpm_set_state(port, 131, 0);
  break;
 case 131:
  tcpm_set_state(port, 130, 0);
  break;
 case 141:
  if (tcpm_port_is_sink(port))
   tcpm_set_state(port, 140, 0);
  break;
 case 140:
  if (!tcpm_port_is_sink(port))
   tcpm_set_state(port, 141, 0);
  break;
 case 142:

  break;
 case 153:
 case 149:
 case 151:
 case 150:
 case 152:




  break;

 default:
  if (tcpm_port_is_disconnected(port))
   tcpm_set_state(port, unattached_state(port), 0);
  break;
 }
}
