
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sci_base_state_machine {int current_state_id; } ;
struct isci_port {int ready_exit; struct sci_base_state_machine sm; } ;
typedef enum sci_port_states { ____Placeholder_sci_port_states } sci_port_states ;


 scalar_t__ is_port_ready_state (int) ;
 int sci_change_state (struct sci_base_state_machine*,int) ;

__attribute__((used)) static void port_state_machine_change(struct isci_port *iport,
          enum sci_port_states state)
{
 struct sci_base_state_machine *sm = &iport->sm;
 enum sci_port_states old_state = sm->current_state_id;

 if (is_port_ready_state(old_state) && !is_port_ready_state(state))
  iport->ready_exit = 1;

 sci_change_state(sm, state);
 iport->ready_exit = 0;
}
