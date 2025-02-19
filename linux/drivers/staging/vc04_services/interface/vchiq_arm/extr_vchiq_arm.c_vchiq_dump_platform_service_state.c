
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ callback; scalar_t__ userdata; } ;
struct vchiq_service {TYPE_1__ base; int instance; } ;
struct user_service {int msg_insert; int msg_remove; scalar_t__ dequeue_pending; scalar_t__ is_vchi; } ;
typedef int buf ;


 int MSG_QUEUE_SIZE ;
 scalar_t__ service_callback ;
 int snprintf (char*,int,char*,...) ;
 int vchiq_dump (void*,char*,int) ;

void
vchiq_dump_platform_service_state(void *dump_context,
      struct vchiq_service *service)
{
 struct user_service *user_service =
   (struct user_service *)service->base.userdata;
 char buf[80];
 int len;

 len = snprintf(buf, sizeof(buf), "  instance %pK", service->instance);

 if ((service->base.callback == service_callback) &&
  user_service->is_vchi) {
  len += snprintf(buf + len, sizeof(buf) - len,
   ", %d/%d messages",
   user_service->msg_insert - user_service->msg_remove,
   MSG_QUEUE_SIZE);

  if (user_service->dequeue_pending)
   len += snprintf(buf + len, sizeof(buf) - len,
    " (dequeue pending)");
 }

 vchiq_dump(dump_context, buf, len + 1);
}
