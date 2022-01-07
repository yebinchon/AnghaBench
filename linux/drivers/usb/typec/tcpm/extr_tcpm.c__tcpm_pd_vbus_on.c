
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int vbus_present; int state; int explicit_contract; } ;


 int const SNK_ATTACHED ;


 int const SNK_HARD_RESET_SINK_ON ;

 int const SNK_READY ;
 int const SRC_STARTUP ;
 int const SRC_TRY ;




 int tcpm_log_force (struct tcpm_port*,char*) ;
 int tcpm_port_is_sink (struct tcpm_port*) ;
 int tcpm_set_state (struct tcpm_port*,int const,int ) ;
 int tcpm_try_src (struct tcpm_port*) ;

__attribute__((used)) static void _tcpm_pd_vbus_on(struct tcpm_port *port)
{
 tcpm_log_force(port, "VBUS on");
 port->vbus_present = 1;
 switch (port->state) {
 case 139:
  port->explicit_contract = 1;
  tcpm_set_state(port, SNK_READY, 0);
  break;
 case 141:
  tcpm_set_state(port, 141, 0);
  break;

 case 142:
  tcpm_set_state(port, tcpm_try_src(port) ? SRC_TRY
       : SNK_ATTACHED,
           0);
  break;
 case 140:
  tcpm_set_state(port, SNK_HARD_RESET_SINK_ON, 0);
  break;
 case 133:
  tcpm_set_state(port, SRC_STARTUP, 0);
  break;
 case 132:
  tcpm_set_state(port, SRC_STARTUP, 0);
  break;

 case 138:

  break;
 case 131:

  break;
 case 130:
  tcpm_set_state(port, 131, 0);
  break;
 case 134:

  break;
 case 137:

  break;
 case 135:
  if (tcpm_port_is_sink(port))
   tcpm_set_state(port, SNK_ATTACHED, 0);
  break;
 case 136:

  break;
 case 128:
 case 129:

  break;
 default:
  break;
 }
}
