
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vchiq_state {int unused_service; struct vchiq_service** services; } ;
struct vchiq_service {scalar_t__ srvstate; scalar_t__ instance; scalar_t__ ref_count; } ;
typedef scalar_t__ VCHIQ_INSTANCE_T ;


 scalar_t__ VCHIQ_SRVSTATE_FREE ;
 int WARN_ON (int) ;
 int service_spinlock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

struct vchiq_service *
next_service_by_instance(struct vchiq_state *state, VCHIQ_INSTANCE_T instance,
    int *pidx)
{
 struct vchiq_service *service = ((void*)0);
 int idx = *pidx;

 spin_lock(&service_spinlock);
 while (idx < state->unused_service) {
  struct vchiq_service *srv = state->services[idx++];

  if (srv && (srv->srvstate != VCHIQ_SRVSTATE_FREE) &&
   (srv->instance == instance)) {
   service = srv;
   WARN_ON(service->ref_count == 0);
   service->ref_count++;
   break;
  }
 }
 spin_unlock(&service_spinlock);

 *pidx = idx;

 return service;
}
