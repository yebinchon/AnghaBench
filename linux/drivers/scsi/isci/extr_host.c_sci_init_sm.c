
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct sci_base_state_machine {size_t initial_state_id; size_t previous_state_id; size_t current_state_id; struct sci_base_state const* state_table; } ;
struct sci_base_state {int (* enter_state ) (struct sci_base_state_machine*) ;} ;
typedef int (* sci_state_transition_t ) (struct sci_base_state_machine*) ;



void sci_init_sm(struct sci_base_state_machine *sm,
   const struct sci_base_state *state_table, u32 initial_state)
{
 sci_state_transition_t handler;

 sm->initial_state_id = initial_state;
 sm->previous_state_id = initial_state;
 sm->current_state_id = initial_state;
 sm->state_table = state_table;

 handler = sm->state_table[initial_state].enter_state;
 if (handler)
  handler(sm);
}
