
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u64 ;
struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {size_t err_counter; int error_lock; int * slots; } ;
struct nvme_error_slot {int dummy; } ;
typedef int off_t ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;


 size_t NVMET_ERROR_LOG_SLOTS ;
 scalar_t__ nvmet_copy_to_sgl (struct nvmet_req*,int,int *,int) ;
 int nvmet_req_complete (struct nvmet_req*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void nvmet_execute_get_log_page_error(struct nvmet_req *req)
{
 struct nvmet_ctrl *ctrl = req->sq->ctrl;
 unsigned long flags;
 off_t offset = 0;
 u64 slot;
 u64 i;

 spin_lock_irqsave(&ctrl->error_lock, flags);
 slot = ctrl->err_counter % NVMET_ERROR_LOG_SLOTS;

 for (i = 0; i < NVMET_ERROR_LOG_SLOTS; i++) {
  if (nvmet_copy_to_sgl(req, offset, &ctrl->slots[slot],
    sizeof(struct nvme_error_slot)))
   break;

  if (slot == 0)
   slot = NVMET_ERROR_LOG_SLOTS - 1;
  else
   slot--;
  offset += sizeof(struct nvme_error_slot);
 }
 spin_unlock_irqrestore(&ctrl->error_lock, flags);
 nvmet_req_complete(req, 0);
}
