
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {size_t state; int delayed_state; unsigned int delay_ms; size_t prev_state; int state_machine; int wq; int state_machine_running; scalar_t__ delayed_runtime; } ;
typedef enum tcpm_state { ____Placeholder_tcpm_state } tcpm_state ;


 int INVALID_STATE ;
 scalar_t__ jiffies ;
 int mod_delayed_work (int ,int *,scalar_t__) ;
 scalar_t__ msecs_to_jiffies (unsigned int) ;
 int tcpm_log (struct tcpm_port*,char*,int ,int ,...) ;
 int * tcpm_states ;

__attribute__((used)) static void tcpm_set_state(struct tcpm_port *port, enum tcpm_state state,
      unsigned int delay_ms)
{
 if (delay_ms) {
  tcpm_log(port, "pending state change %s -> %s @ %u ms",
    tcpm_states[port->state], tcpm_states[state],
    delay_ms);
  port->delayed_state = state;
  mod_delayed_work(port->wq, &port->state_machine,
     msecs_to_jiffies(delay_ms));
  port->delayed_runtime = jiffies + msecs_to_jiffies(delay_ms);
  port->delay_ms = delay_ms;
 } else {
  tcpm_log(port, "state change %s -> %s",
    tcpm_states[port->state], tcpm_states[state]);
  port->delayed_state = INVALID_STATE;
  port->prev_state = port->state;
  port->state = state;






  if (!port->state_machine_running)
   mod_delayed_work(port->wq, &port->state_machine, 0);
 }
}
