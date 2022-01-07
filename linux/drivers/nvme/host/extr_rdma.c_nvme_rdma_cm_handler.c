
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rdma_cm_id {struct nvme_rdma_queue* context; } ;
struct rdma_cm_event {int event; int status; } ;
struct nvme_rdma_queue {int cm_error; int cm_done; TYPE_2__* ctrl; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int ECONNRESET ;
 int complete (int *) ;
 int dev_dbg (int ,char*,...) ;
 int dev_err (int ,char*,int) ;
 int nvme_rdma_addr_resolved (struct nvme_rdma_queue*) ;
 int nvme_rdma_conn_established (struct nvme_rdma_queue*) ;
 int nvme_rdma_conn_rejected (struct nvme_rdma_queue*,struct rdma_cm_event*) ;
 int nvme_rdma_destroy_queue_ib (struct nvme_rdma_queue*) ;
 int nvme_rdma_error_recovery (TYPE_2__*) ;
 int nvme_rdma_route_resolved (struct nvme_rdma_queue*) ;
 int rdma_event_msg (int) ;

__attribute__((used)) static int nvme_rdma_cm_handler(struct rdma_cm_id *cm_id,
  struct rdma_cm_event *ev)
{
 struct nvme_rdma_queue *queue = cm_id->context;
 int cm_error = 0;

 dev_dbg(queue->ctrl->ctrl.device, "%s (%d): status %d id %p\n",
  rdma_event_msg(ev->event), ev->event,
  ev->status, cm_id);

 switch (ev->event) {
 case 137:
  cm_error = nvme_rdma_addr_resolved(queue);
  break;
 case 130:
  cm_error = nvme_rdma_route_resolved(queue);
  break;
 case 133:
  queue->cm_error = nvme_rdma_conn_established(queue);

  complete(&queue->cm_done);
  return 0;
 case 132:
  nvme_rdma_destroy_queue_ib(queue);
  cm_error = nvme_rdma_conn_rejected(queue, ev);
  break;
 case 131:
 case 136:
 case 128:
  nvme_rdma_destroy_queue_ib(queue);

 case 138:
  dev_dbg(queue->ctrl->ctrl.device,
   "CM error event %d\n", ev->event);
  cm_error = -ECONNRESET;
  break;
 case 134:
 case 139:
 case 129:
  dev_dbg(queue->ctrl->ctrl.device,
   "disconnect received - connection closed\n");
  nvme_rdma_error_recovery(queue->ctrl);
  break;
 case 135:

  break;
 default:
  dev_err(queue->ctrl->ctrl.device,
   "Unexpected RDMA CM event (%d)\n", ev->event);
  nvme_rdma_error_recovery(queue->ctrl);
  break;
 }

 if (cm_error) {
  queue->cm_error = cm_error;
  complete(&queue->cm_done);
 }

 return 0;
}
