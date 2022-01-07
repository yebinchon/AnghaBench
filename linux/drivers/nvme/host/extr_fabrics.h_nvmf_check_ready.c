
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int dummy; } ;
struct nvme_ctrl {scalar_t__ state; } ;


 scalar_t__ NVME_CTRL_LIVE ;
 int __nvmf_check_ready (struct nvme_ctrl*,struct request*,int) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static inline bool nvmf_check_ready(struct nvme_ctrl *ctrl, struct request *rq,
  bool queue_live)
{
 if (likely(ctrl->state == NVME_CTRL_LIVE))
  return 1;
 return __nvmf_check_ready(ctrl, rq, queue_live);
}
