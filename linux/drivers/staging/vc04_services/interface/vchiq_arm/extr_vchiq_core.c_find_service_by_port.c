
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {struct vchiq_service** services; } ;
struct vchiq_service {scalar_t__ srvstate; scalar_t__ ref_count; } ;


 unsigned int VCHIQ_PORT_MAX ;
 scalar_t__ VCHIQ_SRVSTATE_FREE ;
 int WARN_ON (int) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int) ;

struct vchiq_service *
find_service_by_port(struct vchiq_state *state, int localport)
{
 struct vchiq_service *service = ((void*)0);

 if ((unsigned int)localport <= VCHIQ_PORT_MAX) {
  spin_lock(&service_spinlock);
  service = state->services[localport];
  if (service && (service->srvstate != VCHIQ_SRVSTATE_FREE)) {
   WARN_ON(service->ref_count == 0);
   service->ref_count++;
  } else
   service = ((void*)0);
  spin_unlock(&service_spinlock);
 }

 if (!service)
  vchiq_log_info(vchiq_core_log_level,
   "Invalid port %d", localport);

 return service;
}
