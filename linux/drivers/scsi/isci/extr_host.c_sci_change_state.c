
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct sci_base_state_machine {size_t current_state_id; size_t previous_state_id; TYPE_1__* state_table; } ;
typedef int (* sci_state_transition_t ) (struct sci_base_state_machine*) ;
struct TYPE_2__ {int (* enter_state ) (struct sci_base_state_machine*) ;int (* exit_state ) (struct sci_base_state_machine*) ;} ;



void sci_change_state(struct sci_base_state_machine *sm, u32 next_state)
{
 sci_state_transition_t handler;

 handler = sm->state_table[sm->current_state_id].exit_state;
 if (handler)
  handler(sm);

 sm->previous_state_id = sm->current_state_id;
 sm->current_state_id = next_state;

 handler = sm->state_table[sm->current_state_id].enter_state;
 if (handler)
  handler(sm);
}
