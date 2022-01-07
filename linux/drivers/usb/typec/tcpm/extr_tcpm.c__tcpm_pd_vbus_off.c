
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int vbus_present; int vbus_never_low; int state; int attached; int pwr_role; } ;





 int PR_SWAP_SRC_SNK_SOURCE_OFF ;



 int SNK_HARD_RESET_WAIT_VBUS ;






 int SNK_UNATTACHED ;

 int SRC_HARD_RESET_VBUS_ON ;

 int SRC_TRYWAIT_DEBOUNCE ;


 int TYPEC_SINK ;
 int tcpm_default_state (struct tcpm_port*) ;
 int tcpm_log_force (struct tcpm_port*,char*) ;
 int tcpm_port_is_source (struct tcpm_port*) ;
 int tcpm_set_state (struct tcpm_port*,int ,int ) ;

__attribute__((used)) static void _tcpm_pd_vbus_off(struct tcpm_port *port)
{
 tcpm_log_force(port, "VBUS off");
 port->vbus_present = 0;
 port->vbus_never_low = 0;
 switch (port->state) {
 case 138:
  tcpm_set_state(port, SNK_HARD_RESET_WAIT_VBUS, 0);
  break;
 case 131:
  tcpm_set_state(port, SRC_HARD_RESET_VBUS_ON, 0);
  break;
 case 143:
  break;

 case 136:

  break;
 case 130:

  if (tcpm_port_is_source(port))
   tcpm_set_state(port, SRC_TRYWAIT_DEBOUNCE, 0);
  break;
 case 132:

  break;
 case 135:
 case 133:
 case 134:
  break;
 case 139:
  tcpm_set_state(port, SNK_UNATTACHED, 0);
  break;

 case 137:
  break;

 case 140:
  tcpm_set_state(port, PR_SWAP_SRC_SNK_SOURCE_OFF, 0);
  break;

 case 141:

  break;

 case 142:
  tcpm_set_state(port, tcpm_default_state(port), 0);
  break;
 case 128:
 case 129:

  break;
 default:
  if (port->pwr_role == TYPEC_SINK &&
      port->attached)
   tcpm_set_state(port, SNK_UNATTACHED, 0);
  break;
 }
}
