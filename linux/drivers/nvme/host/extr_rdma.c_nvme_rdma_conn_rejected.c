
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct rdma_cm_id {int dummy; } ;
struct rdma_cm_event {int status; } ;
struct nvme_rdma_queue {TYPE_2__* ctrl; struct rdma_cm_id* cm_id; } ;
struct nvme_rdma_cm_rej {int sts; } ;
struct TYPE_3__ {int device; } ;
struct TYPE_4__ {TYPE_1__ ctrl; } ;


 int ECONNRESET ;
 int dev_err (int ,char*,int,char const*,...) ;
 int le16_to_cpu (int ) ;
 int nvme_rdma_cm_msg (int ) ;
 struct nvme_rdma_cm_rej* rdma_consumer_reject_data (struct rdma_cm_id*,struct rdma_cm_event*,int*) ;
 char* rdma_reject_msg (struct rdma_cm_id*,int) ;

__attribute__((used)) static int nvme_rdma_conn_rejected(struct nvme_rdma_queue *queue,
  struct rdma_cm_event *ev)
{
 struct rdma_cm_id *cm_id = queue->cm_id;
 int status = ev->status;
 const char *rej_msg;
 const struct nvme_rdma_cm_rej *rej_data;
 u8 rej_data_len;

 rej_msg = rdma_reject_msg(cm_id, status);
 rej_data = rdma_consumer_reject_data(cm_id, ev, &rej_data_len);

 if (rej_data && rej_data_len >= sizeof(u16)) {
  u16 sts = le16_to_cpu(rej_data->sts);

  dev_err(queue->ctrl->ctrl.device,
        "Connect rejected: status %d (%s) nvme status %d (%s).\n",
        status, rej_msg, sts, nvme_rdma_cm_msg(sts));
 } else {
  dev_err(queue->ctrl->ctrl.device,
   "Connect rejected: status %d (%s).\n", status, rej_msg);
 }

 return -ECONNRESET;
}
