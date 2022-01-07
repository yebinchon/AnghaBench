
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvmet_ctrl {scalar_t__ cc; int csts; int lock; } ;


 int NVME_CSTS_RDY ;
 int lockdep_assert_held (int *) ;

__attribute__((used)) static void nvmet_clear_ctrl(struct nvmet_ctrl *ctrl)
{
 lockdep_assert_held(&ctrl->lock);


 ctrl->csts &= ~NVME_CSTS_RDY;
 ctrl->cc = 0;
}
