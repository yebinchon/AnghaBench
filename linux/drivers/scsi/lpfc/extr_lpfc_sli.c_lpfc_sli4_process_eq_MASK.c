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
struct lpfc_queue {int max_proc_limit; int notify_interval; int EQ_processed; int EQ_max_eqe; scalar_t__ queue_claimed; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* sli4_write_eq_db ) (struct lpfc_hba*,struct lpfc_queue*,int,int /*<<< orphan*/ ) ;} ;
struct lpfc_hba {TYPE_1__ sli4_hba; } ;
struct lpfc_eqe {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  LPFC_QUEUE_NOARM ; 
 int /*<<< orphan*/  LPFC_QUEUE_REARM ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_eqe*) ; 
 scalar_t__ FUNC1 (scalar_t__*,int /*<<< orphan*/ ,int) ; 
 struct lpfc_eqe* FUNC2 (struct lpfc_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_queue*,struct lpfc_eqe*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_queue*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,struct lpfc_queue*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct lpfc_hba *phba, struct lpfc_queue *eq)
{
	struct lpfc_eqe *eqe;
	int count = 0, consumed = 0;

	if (FUNC1(&eq->queue_claimed, 0, 1) != 0)
		goto rearm_and_exit;

	eqe = FUNC2(eq);
	while (eqe) {
		FUNC3(phba, eq, eqe);
		FUNC0(phba, eq, eqe);

		consumed++;
		if (!(++count % eq->max_proc_limit))
			break;

		if (!(count % eq->notify_interval)) {
			phba->sli4_hba.sli4_write_eq_db(phba, eq, consumed,
							LPFC_QUEUE_NOARM);
			consumed = 0;
		}

		eqe = FUNC2(eq);
	}
	eq->EQ_processed += count;

	/* Track the max number of EQEs processed in 1 intr */
	if (count > eq->EQ_max_eqe)
		eq->EQ_max_eqe = count;

	eq->queue_claimed = 0;

rearm_and_exit:
	/* Always clear and re-arm the EQ */
	phba->sli4_hba.sli4_write_eq_db(phba, eq, consumed, LPFC_QUEUE_REARM);

	return count;
}