
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nvmet_ctrl {struct nvmet_cq** cqs; } ;
struct nvmet_cq {size_t qid; size_t size; } ;



void nvmet_cq_setup(struct nvmet_ctrl *ctrl, struct nvmet_cq *cq,
  u16 qid, u16 size)
{
 cq->qid = qid;
 cq->size = size;

 ctrl->cqs[qid] = cq;
}
