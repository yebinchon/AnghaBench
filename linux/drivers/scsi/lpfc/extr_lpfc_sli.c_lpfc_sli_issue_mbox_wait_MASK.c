#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct lpfc_hba {int /*<<< orphan*/  hbalock; } ;
struct completion {int dummy; } ;
struct TYPE_4__ {int mbox_flag; int /*<<< orphan*/  mbox_cmpl; struct completion* context3; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int LPFC_MBX_WAKE ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC1 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_sli_wake_mbox_wait ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct completion*,int /*<<< orphan*/ ) ; 

int
FUNC6(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmboxq,
			 uint32_t timeout)
{
	struct completion mbox_done;
	int retval;
	unsigned long flag;

	pmboxq->mbox_flag &= ~LPFC_MBX_WAKE;
	/* setup wake call as IOCB callback */
	pmboxq->mbox_cmpl = lpfc_sli_wake_mbox_wait;

	/* setup context3 field to pass wait_queue pointer to wake function  */
	FUNC0(&mbox_done);
	pmboxq->context3 = &mbox_done;
	/* now issue the command */
	retval = FUNC1(phba, pmboxq, MBX_NOWAIT);
	if (retval == MBX_BUSY || retval == MBX_SUCCESS) {
		FUNC5(&mbox_done,
					    FUNC2(timeout * 1000));

		FUNC3(&phba->hbalock, flag);
		pmboxq->context3 = NULL;
		/*
		 * if LPFC_MBX_WAKE flag is set the mailbox is completed
		 * else do not free the resources.
		 */
		if (pmboxq->mbox_flag & LPFC_MBX_WAKE) {
			retval = MBX_SUCCESS;
		} else {
			retval = MBX_TIMEOUT;
			pmboxq->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		}
		FUNC4(&phba->hbalock, flag);
	}
	return retval;
}