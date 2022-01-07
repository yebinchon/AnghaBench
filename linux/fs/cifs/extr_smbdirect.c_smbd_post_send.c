
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int done; } ;
struct smbd_request {int num_sge; int has_payload; TYPE_2__* sge; TYPE_1__ cqe; } ;
struct smbd_connection {int keep_alive_interval; int idle_timer_work; int workqueue; int wait_send_pending; int send_pending; int wait_send_payload_pending; int send_payload_pending; TYPE_3__* id; } ;
struct ib_send_wr {int num_sge; int send_flags; int opcode; TYPE_2__* sg_list; TYPE_1__* wr_cqe; int * next; } ;
struct TYPE_6__ {int qp; int device; } ;
struct TYPE_5__ {int length; int addr; } ;


 int DMA_TO_DEVICE ;
 int EAGAIN ;
 int ERR ;
 int HZ ;
 int IB_SEND_SIGNALED ;
 int IB_WR_SEND ;
 int INFO ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int atomic_inc (int *) ;
 int ib_dma_sync_single_for_device (int ,int ,int ,int ) ;
 int ib_post_send (int ,struct ib_send_wr*,int *) ;
 int log_rdma_send (int ,char*,int,...) ;
 int mod_delayed_work (int ,int *,int) ;
 int send_done ;
 int smbd_disconnect_rdma_connection (struct smbd_connection*) ;
 int wake_up (int *) ;

__attribute__((used)) static int smbd_post_send(struct smbd_connection *info,
  struct smbd_request *request, bool has_payload)
{
 struct ib_send_wr send_wr;
 int rc, i;

 for (i = 0; i < request->num_sge; i++) {
  log_rdma_send(INFO,
   "rdma_request sge[%d] addr=%llu length=%u\n",
   i, request->sge[i].addr, request->sge[i].length);
  ib_dma_sync_single_for_device(
   info->id->device,
   request->sge[i].addr,
   request->sge[i].length,
   DMA_TO_DEVICE);
 }

 request->cqe.done = send_done;

 send_wr.next = ((void*)0);
 send_wr.wr_cqe = &request->cqe;
 send_wr.sg_list = request->sge;
 send_wr.num_sge = request->num_sge;
 send_wr.opcode = IB_WR_SEND;
 send_wr.send_flags = IB_SEND_SIGNALED;

 if (has_payload) {
  request->has_payload = 1;
  atomic_inc(&info->send_payload_pending);
 } else {
  request->has_payload = 0;
  atomic_inc(&info->send_pending);
 }

 rc = ib_post_send(info->id->qp, &send_wr, ((void*)0));
 if (rc) {
  log_rdma_send(ERR, "ib_post_send failed rc=%d\n", rc);
  if (has_payload) {
   if (atomic_dec_and_test(&info->send_payload_pending))
    wake_up(&info->wait_send_payload_pending);
  } else {
   if (atomic_dec_and_test(&info->send_pending))
    wake_up(&info->wait_send_pending);
  }
  smbd_disconnect_rdma_connection(info);
  rc = -EAGAIN;
 } else

  mod_delayed_work(info->workqueue, &info->idle_timer_work,
   info->keep_alive_interval*HZ);

 return rc;
}
