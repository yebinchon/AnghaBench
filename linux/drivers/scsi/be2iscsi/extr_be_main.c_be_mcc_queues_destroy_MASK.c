#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct be_queue_info {scalar_t__ created; } ;
struct TYPE_6__ {struct be_queue_info cq; struct be_queue_info q; } ;
struct be_ctrl_info {TYPE_3__ mcc_obj; TYPE_2__* ptag_state; int /*<<< orphan*/ * mcc_wait; int /*<<< orphan*/ * mcc_tag_status; TYPE_1__* pdev; } ;
struct beiscsi_hba {struct be_ctrl_info ctrl; } ;
struct be_dma_mem {scalar_t__ size; int /*<<< orphan*/  dma; int /*<<< orphan*/  va; } ;
struct TYPE_5__ {int /*<<< orphan*/  tag_state; struct be_dma_mem tag_mem_state; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CQE_VALID_MASK ; 
 int /*<<< orphan*/  HZ ; 
 int MAX_MCC_CMD ; 
 int /*<<< orphan*/  MCC_STATUS_FAILED ; 
 int /*<<< orphan*/  MCC_TAG_STATE_RUNNING ; 
 int /*<<< orphan*/  MCC_TAG_STATE_TIMEOUT ; 
 int /*<<< orphan*/  QTYPE_CQ ; 
 int /*<<< orphan*/  QTYPE_MCCQ ; 
 int /*<<< orphan*/  FUNC0 (struct beiscsi_hba*,struct be_queue_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct be_ctrl_info*,struct be_queue_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct beiscsi_hba *phba)
{
	struct be_ctrl_info *ctrl = &phba->ctrl;
	struct be_dma_mem *ptag_mem;
	struct be_queue_info *q;
	int i, tag;

	q = &phba->ctrl.mcc_obj.q;
	for (i = 0; i < MAX_MCC_CMD; i++) {
		tag = i + 1;
		if (!FUNC4(MCC_TAG_STATE_RUNNING,
			      &ctrl->ptag_state[tag].tag_state))
			continue;

		if (FUNC4(MCC_TAG_STATE_TIMEOUT,
			     &ctrl->ptag_state[tag].tag_state)) {
			ptag_mem = &ctrl->ptag_state[tag].tag_mem_state;
			if (ptag_mem->size) {
				FUNC2(&ctrl->pdev->dev,
						    ptag_mem->size,
						    ptag_mem->va,
						    ptag_mem->dma);
				ptag_mem->size = 0;
			}
			continue;
		}
		/**
		 * If MCC is still active and waiting then wake up the process.
		 * We are here only because port is going offline. The process
		 * sees that (BEISCSI_HBA_ONLINE is cleared) and EIO error is
		 * returned for the operation and allocated memory cleaned up.
		 */
		if (FUNC5(&ctrl->mcc_wait[tag])) {
			ctrl->mcc_tag_status[tag] = MCC_STATUS_FAILED;
			ctrl->mcc_tag_status[tag] |= CQE_VALID_MASK;
			FUNC6(&ctrl->mcc_wait[tag]);
			/*
			 * Control tag info gets reinitialized in enable
			 * so wait for the process to clear running state.
			 */
			while (FUNC4(MCC_TAG_STATE_RUNNING,
					&ctrl->ptag_state[tag].tag_state))
				FUNC3(HZ);
		}
		/**
		 * For MCC with tag_states MCC_TAG_STATE_ASYNC and
		 * MCC_TAG_STATE_IGNORE nothing needs to done.
		 */
	}
	if (q->created) {
		FUNC1(ctrl, q, QTYPE_MCCQ);
		FUNC0(phba, q);
	}

	q = &phba->ctrl.mcc_obj.cq;
	if (q->created) {
		FUNC1(ctrl, q, QTYPE_CQ);
		FUNC0(phba, q);
	}
}