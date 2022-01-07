
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vchiq_service {size_t srvstate; int localport; TYPE_1__* state; } ;
struct TYPE_2__ {int id; } ;


 int * srvstate_names ;
 int vchiq_core_log_level ;
 int vchiq_log_info (int ,char*,int ,int ,int ,int ) ;

__attribute__((used)) static inline void
vchiq_set_service_state(struct vchiq_service *service, int newstate)
{
 vchiq_log_info(vchiq_core_log_level, "%d: srv:%d %s->%s",
  service->state->id, service->localport,
  srvstate_names[service->srvstate],
  srvstate_names[newstate]);
 service->srvstate = newstate;
}
