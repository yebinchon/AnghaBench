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
struct lpfc_sli_ring {int /*<<< orphan*/  ring_lock; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  hbalock; } ;

/* Variables and functions */
 int IOCB_ERROR ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 struct lpfc_sli_ring* FUNC1 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(struct lpfc_hba *phba, uint32_t ring_number,
		    struct lpfc_iocbq *piocb, uint32_t flag)
{
	struct lpfc_sli_ring *pring;
	unsigned long iflags;
	int rc;

	if (phba->sli_rev == LPFC_SLI_REV4) {
		pring = FUNC1(phba, piocb);
		if (FUNC4(pring == NULL))
			return IOCB_ERROR;

		FUNC2(&pring->ring_lock, iflags);
		rc = FUNC0(phba, ring_number, piocb, flag);
		FUNC3(&pring->ring_lock, iflags);
	} else {
		/* For now, SLI2/3 will still use hbalock */
		FUNC2(&phba->hbalock, iflags);
		rc = FUNC0(phba, ring_number, piocb, flag);
		FUNC3(&phba->hbalock, iflags);
	}
	return rc;
}