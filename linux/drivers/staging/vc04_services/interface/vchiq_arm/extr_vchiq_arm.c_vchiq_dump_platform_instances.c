
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vchiq_state {int unused_service; struct vchiq_service** services; } ;
struct TYPE_4__ {scalar_t__ callback; } ;
struct vchiq_service {TYPE_2__* instance; TYPE_1__ base; } ;
typedef int buf ;
typedef TYPE_2__* VCHIQ_INSTANCE_T ;
struct TYPE_5__ {int mark; int pid; int completion_insert; int completion_remove; scalar_t__ connected; } ;


 int MAX_COMPLETIONS ;
 scalar_t__ service_callback ;
 int snprintf (char*,int,char*,TYPE_2__*,int,char*,int,int) ;
 int vchiq_dump (void*,char*,int) ;
 struct vchiq_state* vchiq_get_state () ;

void
vchiq_dump_platform_instances(void *dump_context)
{
 struct vchiq_state *state = vchiq_get_state();
 char buf[80];
 int len;
 int i;




 for (i = 0; i < state->unused_service; i++) {
  struct vchiq_service *service = state->services[i];
  VCHIQ_INSTANCE_T instance;

  if (service && (service->base.callback == service_callback)) {
   instance = service->instance;
   if (instance)
    instance->mark = 0;
  }
 }

 for (i = 0; i < state->unused_service; i++) {
  struct vchiq_service *service = state->services[i];
  VCHIQ_INSTANCE_T instance;

  if (service && (service->base.callback == service_callback)) {
   instance = service->instance;
   if (instance && !instance->mark) {
    len = snprintf(buf, sizeof(buf),
     "Instance %pK: pid %d,%s completions %d/%d",
     instance, instance->pid,
     instance->connected ? " connected, " :
      "",
     instance->completion_insert -
      instance->completion_remove,
     MAX_COMPLETIONS);

    vchiq_dump(dump_context, buf, len + 1);

    instance->mark = 1;
   }
  }
 }
}
