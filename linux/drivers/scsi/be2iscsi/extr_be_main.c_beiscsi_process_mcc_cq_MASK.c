#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct be_queue_info {int /*<<< orphan*/  id; } ;
struct TYPE_3__ {struct be_queue_info cq; } ;
struct TYPE_4__ {TYPE_1__ mcc_obj; } ;
struct beiscsi_hba {TYPE_2__ ctrl; } ;
struct be_mcc_compl {int flags; } ;

/* Variables and functions */
 int CQE_FLAGS_ASYNC_MASK ; 
 int CQE_FLAGS_COMPLETED_MASK ; 
 int CQE_FLAGS_VALID_MASK ; 
 scalar_t__ FUNC0 (struct beiscsi_hba*) ; 
 int /*<<< orphan*/  FUNC1 (struct beiscsi_hba*,struct be_mcc_compl*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,struct be_mcc_compl*) ; 
 int /*<<< orphan*/  FUNC3 (struct beiscsi_hba*,int /*<<< orphan*/ ,unsigned int,int) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct be_queue_info*) ; 
 struct be_mcc_compl* FUNC6 (struct be_queue_info*) ; 

void FUNC7(struct beiscsi_hba *phba)
{
	struct be_queue_info *mcc_cq;
	struct  be_mcc_compl *mcc_compl;
	unsigned int num_processed = 0;

	mcc_cq = &phba->ctrl.mcc_obj.cq;
	mcc_compl = FUNC6(mcc_cq);
	mcc_compl->flags = FUNC4(mcc_compl->flags);
	while (mcc_compl->flags & CQE_FLAGS_VALID_MASK) {
		if (FUNC0(phba))
			return;

		if (num_processed >= 32) {
			FUNC3(phba, mcc_cq->id,
					num_processed, 0);
			num_processed = 0;
		}
		if (mcc_compl->flags & CQE_FLAGS_ASYNC_MASK) {
			FUNC1(phba, mcc_compl);
		} else if (mcc_compl->flags & CQE_FLAGS_COMPLETED_MASK) {
			FUNC2(&phba->ctrl, mcc_compl);
		}

		mcc_compl->flags = 0;
		FUNC5(mcc_cq);
		mcc_compl = FUNC6(mcc_cq);
		mcc_compl->flags = FUNC4(mcc_compl->flags);
		num_processed++;
	}

	if (num_processed > 0)
		FUNC3(phba, mcc_cq->id, num_processed, 1);
}