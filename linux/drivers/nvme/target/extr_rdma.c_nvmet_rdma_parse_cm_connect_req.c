
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rdma_conn_param {scalar_t__ private_data_len; scalar_t__ private_data; } ;
struct nvmet_rdma_queue {scalar_t__ recv_queue_size; scalar_t__ host_qid; scalar_t__ send_queue_size; } ;
struct nvme_rdma_cm_req {int hrqsize; int hsqsize; int qid; int recfmt; } ;


 scalar_t__ NVME_AQ_DEPTH ;
 scalar_t__ NVME_RDMA_CM_FMT_1_0 ;
 int NVME_RDMA_CM_INVALID_HSQSIZE ;
 int NVME_RDMA_CM_INVALID_LEN ;
 int NVME_RDMA_CM_INVALID_RECFMT ;
 scalar_t__ le16_to_cpu (int ) ;

__attribute__((used)) static int
nvmet_rdma_parse_cm_connect_req(struct rdma_conn_param *conn,
    struct nvmet_rdma_queue *queue)
{
 struct nvme_rdma_cm_req *req;

 req = (struct nvme_rdma_cm_req *)conn->private_data;
 if (!req || conn->private_data_len == 0)
  return NVME_RDMA_CM_INVALID_LEN;

 if (le16_to_cpu(req->recfmt) != NVME_RDMA_CM_FMT_1_0)
  return NVME_RDMA_CM_INVALID_RECFMT;

 queue->host_qid = le16_to_cpu(req->qid);





 queue->recv_queue_size = le16_to_cpu(req->hsqsize) + 1;
 queue->send_queue_size = le16_to_cpu(req->hrqsize);

 if (!queue->host_qid && queue->recv_queue_size > NVME_AQ_DEPTH)
  return NVME_RDMA_CM_INVALID_HSQSIZE;



 return 0;
}
