
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_state {TYPE_1__* local; int recycle_event; int trigger_event; int sync_release_event; int sync_trigger_event; } ;
struct TYPE_2__ {int recycle; int trigger; int sync_release; int sync_trigger; } ;


 int remote_event_poll (int *,int *) ;

void
remote_event_pollall(struct vchiq_state *state)
{
 remote_event_poll(&state->sync_trigger_event, &state->local->sync_trigger);
 remote_event_poll(&state->sync_release_event, &state->local->sync_release);
 remote_event_poll(&state->trigger_event, &state->local->trigger);
 remote_event_poll(&state->recycle_event, &state->local->recycle);
}
