
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {scalar_t__ queued_message; scalar_t__ delayed_state; scalar_t__ delayed_runtime; int state_machine; int wq; } ;
typedef enum pd_msg_request { ____Placeholder_pd_msg_request } pd_msg_request ;


 scalar_t__ INVALID_STATE ;
 int PD_CTRL_NOT_SUPP ;
 int PD_CTRL_REJECT ;
 int PD_CTRL_WAIT ;





 scalar_t__ PD_MSG_NONE ;
 scalar_t__ jiffies ;
 int mod_delayed_work (int ,int *,scalar_t__) ;
 int tcpm_pd_send_control (struct tcpm_port*,int ) ;
 int tcpm_pd_send_sink_caps (struct tcpm_port*) ;
 int tcpm_pd_send_source_caps (struct tcpm_port*) ;
 scalar_t__ time_is_after_jiffies (scalar_t__) ;

__attribute__((used)) static bool tcpm_send_queued_message(struct tcpm_port *port)
{
 enum pd_msg_request queued_message;

 do {
  queued_message = port->queued_message;
  port->queued_message = PD_MSG_NONE;

  switch (queued_message) {
  case 130:
   tcpm_pd_send_control(port, PD_CTRL_WAIT);
   break;
  case 131:
   tcpm_pd_send_control(port, PD_CTRL_REJECT);
   break;
  case 132:
   tcpm_pd_send_control(port, PD_CTRL_NOT_SUPP);
   break;
  case 129:
   tcpm_pd_send_sink_caps(port);
   break;
  case 128:
   tcpm_pd_send_source_caps(port);
   break;
  default:
   break;
  }
 } while (port->queued_message != PD_MSG_NONE);

 if (port->delayed_state != INVALID_STATE) {
  if (time_is_after_jiffies(port->delayed_runtime)) {
   mod_delayed_work(port->wq, &port->state_machine,
      port->delayed_runtime - jiffies);
   return 1;
  }
  port->delayed_state = INVALID_STATE;
 }
 return 0;
}
