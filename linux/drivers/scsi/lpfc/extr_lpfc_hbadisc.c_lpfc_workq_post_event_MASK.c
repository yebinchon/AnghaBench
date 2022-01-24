#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_work_evt {int /*<<< orphan*/  evt_listp; int /*<<< orphan*/  evt; void* evt_arg2; void* evt_arg1; } ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; int /*<<< orphan*/  work_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 struct lpfc_work_evt* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int
FUNC5(struct lpfc_hba *phba, void *arg1, void *arg2,
		      uint32_t evt)
{
	struct lpfc_work_evt  *evtp;
	unsigned long flags;

	/*
	 * All Mailbox completions and LPFC_ELS_RING rcv ring IOCB events will
	 * be queued to worker thread for processing
	 */
	evtp = FUNC0(sizeof(struct lpfc_work_evt), GFP_ATOMIC);
	if (!evtp)
		return 0;

	evtp->evt_arg1  = arg1;
	evtp->evt_arg2  = arg2;
	evtp->evt       = evt;

	FUNC3(&phba->hbalock, flags);
	FUNC1(&evtp->evt_listp, &phba->work_list);
	FUNC4(&phba->hbalock, flags);

	FUNC2(phba);

	return 1;
}