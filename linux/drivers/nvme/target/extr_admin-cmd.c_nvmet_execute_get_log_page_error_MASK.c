#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u64 ;
struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {size_t err_counter; int /*<<< orphan*/  error_lock; int /*<<< orphan*/ * slots; } ;
struct nvme_error_slot {int dummy; } ;
typedef  int off_t ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;

/* Variables and functions */
 size_t NVMET_ERROR_LOG_SLOTS ; 
 scalar_t__ FUNC0 (struct nvmet_req*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct nvmet_req *req)
{
	struct nvmet_ctrl *ctrl = req->sq->ctrl;
	unsigned long flags;
	off_t offset = 0;
	u64 slot;
	u64 i;

	FUNC2(&ctrl->error_lock, flags);
	slot = ctrl->err_counter % NVMET_ERROR_LOG_SLOTS;

	for (i = 0; i < NVMET_ERROR_LOG_SLOTS; i++) {
		if (FUNC0(req, offset, &ctrl->slots[slot],
				sizeof(struct nvme_error_slot)))
			break;

		if (slot == 0)
			slot = NVMET_ERROR_LOG_SLOTS - 1;
		else
			slot--;
		offset += sizeof(struct nvme_error_slot);
	}
	FUNC3(&ctrl->error_lock, flags);
	FUNC1(req, 0);
}