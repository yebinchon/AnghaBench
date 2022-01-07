
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vchiq_state {int id; int * poll_services; int unused_service; } ;
struct vchiq_service {int bulk_rx; int bulk_tx; int remoteport; int localport; int public_fourcc; int poll_flags; } ;


 int BITSET_SIZE (int ) ;
 int VCHIQ_FOURCC_INVALID ;
 int VCHIQ_POLL_REMOVE ;
 int VCHIQ_POLL_RXNOTIFY ;
 int VCHIQ_POLL_TERMINATE ;
 int VCHIQ_POLL_TXNOTIFY ;
 scalar_t__ VCHIQ_SUCCESS ;
 int atomic_xchg (int *,int ) ;
 struct vchiq_service* find_service_by_port (struct vchiq_state*,int) ;
 int notify_bulks (struct vchiq_service*,int *,int) ;
 int request_poll (struct vchiq_state*,struct vchiq_service*,int) ;
 int unlock_service (struct vchiq_service*) ;
 scalar_t__ vchiq_close_service_internal (struct vchiq_service*,int ) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ) ;

__attribute__((used)) static void
poll_services(struct vchiq_state *state)
{
 int group, i;

 for (group = 0; group < BITSET_SIZE(state->unused_service); group++) {
  u32 flags;

  flags = atomic_xchg(&state->poll_services[group], 0);
  for (i = 0; flags; i++) {
   if (flags & (1 << i)) {
    struct vchiq_service *service =
     find_service_by_port(state,
      (group<<5) + i);
    u32 service_flags;

    flags &= ~(1 << i);
    if (!service)
     continue;
    service_flags =
     atomic_xchg(&service->poll_flags, 0);
    if (service_flags &
     (1 << VCHIQ_POLL_REMOVE)) {
     vchiq_log_info(vchiq_core_log_level,
      "%d: ps - remove %d<->%d",
      state->id, service->localport,
      service->remoteport);




     service->public_fourcc =
      VCHIQ_FOURCC_INVALID;

     if (vchiq_close_service_internal(
      service, 0 ) !=
      VCHIQ_SUCCESS)
      request_poll(state, service,
       VCHIQ_POLL_REMOVE);
    } else if (service_flags &
     (1 << VCHIQ_POLL_TERMINATE)) {
     vchiq_log_info(vchiq_core_log_level,
      "%d: ps - terminate %d<->%d",
      state->id, service->localport,
      service->remoteport);
     if (vchiq_close_service_internal(
      service, 0 ) !=
      VCHIQ_SUCCESS)
      request_poll(state, service,
       VCHIQ_POLL_TERMINATE);
    }
    if (service_flags & (1 << VCHIQ_POLL_TXNOTIFY))
     notify_bulks(service,
      &service->bulk_tx,
      1 );
    if (service_flags & (1 << VCHIQ_POLL_RXNOTIFY))
     notify_bulks(service,
      &service->bulk_rx,
      1 );
    unlock_service(service);
   }
  }
 }
}
