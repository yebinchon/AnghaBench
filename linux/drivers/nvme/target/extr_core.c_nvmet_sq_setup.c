
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u16 ;
struct nvmet_sq {size_t qid; size_t size; scalar_t__ sqhd; } ;
struct nvmet_ctrl {struct nvmet_sq** sqs; } ;



void nvmet_sq_setup(struct nvmet_ctrl *ctrl, struct nvmet_sq *sq,
  u16 qid, u16 size)
{
 sq->sqhd = 0;
 sq->qid = qid;
 sq->size = size;

 ctrl->sqs[qid] = sq;
}
