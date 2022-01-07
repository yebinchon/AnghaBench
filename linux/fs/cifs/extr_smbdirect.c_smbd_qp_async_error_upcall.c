
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smbd_connection {int dummy; } ;
struct ib_event {int event; TYPE_1__* device; } ;
struct TYPE_2__ {int name; } ;


 int ERR ;


 int ib_event_msg (int) ;
 int log_rdma_event (int ,char*,int ,int ,struct smbd_connection*) ;
 int smbd_disconnect_rdma_connection (struct smbd_connection*) ;

__attribute__((used)) static void
smbd_qp_async_error_upcall(struct ib_event *event, void *context)
{
 struct smbd_connection *info = context;

 log_rdma_event(ERR, "%s on device %s info %p\n",
  ib_event_msg(event->event), event->device->name, info);

 switch (event->event) {
 case 129:
 case 128:
  smbd_disconnect_rdma_connection(info);

 default:
  break;
 }
}
