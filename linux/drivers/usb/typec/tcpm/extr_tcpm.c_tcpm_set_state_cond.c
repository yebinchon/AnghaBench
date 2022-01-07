
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {size_t enter_state; size_t state; } ;
typedef enum tcpm_state { ____Placeholder_tcpm_state } tcpm_state ;


 int tcpm_log (struct tcpm_port*,char*,char*,int ,int ,unsigned int,int ) ;
 int tcpm_set_state (struct tcpm_port*,int,unsigned int) ;
 int * tcpm_states ;

__attribute__((used)) static void tcpm_set_state_cond(struct tcpm_port *port, enum tcpm_state state,
    unsigned int delay_ms)
{
 if (port->enter_state == port->state)
  tcpm_set_state(port, state, delay_ms);
 else
  tcpm_log(port,
    "skipped %sstate change %s -> %s [%u ms], context state %s",
    delay_ms ? "delayed " : "",
    tcpm_states[port->state], tcpm_states[state],
    delay_ms, tcpm_states[port->enter_state]);
}
