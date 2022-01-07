
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct vchiq_state {int poll_needed; TYPE_1__* local; int trigger_event; int * poll_services; } ;
struct vchiq_service {int localport; int poll_flags; } ;
struct TYPE_2__ {int trigger; } ;


 int atomic_cmpxchg (int *,int,int) ;
 int atomic_read (int *) ;
 int remote_event_signal_local (int *,int *) ;
 int wmb () ;

inline void
request_poll(struct vchiq_state *state, struct vchiq_service *service,
      int poll_type)
{
 u32 value;

 if (service) {
  do {
   value = atomic_read(&service->poll_flags);
  } while (atomic_cmpxchg(&service->poll_flags, value,
   value | (1 << poll_type)) != value);

  do {
   value = atomic_read(&state->poll_services[
    service->localport>>5]);
  } while (atomic_cmpxchg(
   &state->poll_services[service->localport>>5],
   value, value | (1 << (service->localport & 0x1f)))
   != value);
 }

 state->poll_needed = 1;
 wmb();


 remote_event_signal_local(&state->trigger_event, &state->local->trigger);
}
