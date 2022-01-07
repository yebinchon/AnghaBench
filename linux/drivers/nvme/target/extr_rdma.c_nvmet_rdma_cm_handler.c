
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rdma_cm_id {TYPE_1__* qp; } ;
struct rdma_cm_event {int event; int status; } ;
struct nvmet_rdma_queue {int dummy; } ;
struct TYPE_2__ {struct nvmet_rdma_queue* qp_context; } ;
 int nvmet_rdma_device_removal (struct rdma_cm_id*,struct nvmet_rdma_queue*) ;
 int nvmet_rdma_queue_connect (struct rdma_cm_id*,struct rdma_cm_event*) ;
 int nvmet_rdma_queue_connect_fail (struct rdma_cm_id*,struct nvmet_rdma_queue*) ;
 int nvmet_rdma_queue_disconnect (struct nvmet_rdma_queue*) ;
 int nvmet_rdma_queue_established (struct nvmet_rdma_queue*) ;
 int pr_debug (char*,int ,...) ;
 int pr_err (char*,int) ;
 int rdma_event_msg (int) ;
 int rdma_reject_msg (struct rdma_cm_id*,int ) ;

__attribute__((used)) static int nvmet_rdma_cm_handler(struct rdma_cm_id *cm_id,
  struct rdma_cm_event *event)
{
 struct nvmet_rdma_queue *queue = ((void*)0);
 int ret = 0;

 if (cm_id->qp)
  queue = cm_id->qp->qp_context;

 pr_debug("%s (%d): status %d id %p\n",
  rdma_event_msg(event->event), event->event,
  event->status, cm_id);

 switch (event->event) {
 case 134:
  ret = nvmet_rdma_queue_connect(cm_id, event);
  break;
 case 131:
  nvmet_rdma_queue_established(queue);
  break;
 case 136:
 case 132:
 case 129:
  nvmet_rdma_queue_disconnect(queue);
  break;
 case 133:
  ret = nvmet_rdma_device_removal(cm_id, queue);
  break;
 case 130:
  pr_debug("Connection rejected: %s\n",
    rdma_reject_msg(cm_id, event->status));

 case 128:
 case 135:
  nvmet_rdma_queue_connect_fail(cm_id, queue);
  break;
 default:
  pr_err("received unrecognized RDMA CM event %d\n",
   event->event);
  break;
 }

 return ret;
}
