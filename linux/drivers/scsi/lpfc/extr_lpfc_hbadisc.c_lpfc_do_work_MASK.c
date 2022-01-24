#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lpfc_hba {int /*<<< orphan*/ * worker_thread; scalar_t__ data_flags; int /*<<< orphan*/  work_waitq; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LPFC_DATA_READY ; 
 int /*<<< orphan*/  MIN_NICE ; 
 int /*<<< orphan*/  PF_NOFREEZE ; 
 TYPE_1__* current ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

int
FUNC6(void *p)
{
	struct lpfc_hba *phba = p;
	int rc;

	FUNC3(current, MIN_NICE);
	current->flags |= PF_NOFREEZE;
	phba->data_flags = 0;

	while (!FUNC0()) {
		/* wait and check worker queue activities */
		rc = FUNC5(phba->work_waitq,
					(FUNC4(LPFC_DATA_READY,
							    &phba->data_flags)
					 || FUNC0()));
		/* Signal wakeup shall terminate the worker thread */
		if (rc) {
			FUNC1(phba, KERN_ERR, LOG_ELS,
					"0433 Wakeup on signal: rc=x%x\n", rc);
			break;
		}

		/* Attend pending lpfc data processing */
		FUNC2(phba);
	}
	phba->worker_thread = NULL;
	FUNC1(phba, KERN_INFO, LOG_ELS,
			"0432 Worker thread stopped.\n");
	return 0;
}