
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int timeout; int q; struct nvme_ctrl* end_io_data; } ;
struct nvme_ctrl {int kato; int ka_cmd; int admin_q; } ;


 int BLK_MQ_REQ_RESERVED ;
 int HZ ;
 scalar_t__ IS_ERR (struct request*) ;
 int NVME_QID_ANY ;
 int PTR_ERR (struct request*) ;
 int blk_execute_rq_nowait (int ,int *,struct request*,int ,int ) ;
 struct request* nvme_alloc_request (int ,int *,int ,int ) ;
 int nvme_keep_alive_end_io ;

__attribute__((used)) static int nvme_keep_alive(struct nvme_ctrl *ctrl)
{
 struct request *rq;

 rq = nvme_alloc_request(ctrl->admin_q, &ctrl->ka_cmd, BLK_MQ_REQ_RESERVED,
   NVME_QID_ANY);
 if (IS_ERR(rq))
  return PTR_ERR(rq);

 rq->timeout = ctrl->kato * HZ;
 rq->end_io_data = ctrl;

 blk_execute_rq_nowait(rq->q, ((void*)0), rq, 0, nvme_keep_alive_end_io);

 return 0;
}
