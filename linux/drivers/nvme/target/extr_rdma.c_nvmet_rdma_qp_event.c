
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_rdma_queue {int cm_id; } ;
struct ib_event {int event; } ;



 int ib_event_msg (int) ;
 int pr_err (char*,int ,int) ;
 int rdma_notify (int ,int) ;

__attribute__((used)) static void nvmet_rdma_qp_event(struct ib_event *event, void *priv)
{
 struct nvmet_rdma_queue *queue = priv;

 switch (event->event) {
 case 128:
  rdma_notify(queue->cm_id, event->event);
  break;
 default:
  pr_err("received IB QP event: %s (%d)\n",
         ib_event_msg(event->event), event->event);
  break;
 }
}
