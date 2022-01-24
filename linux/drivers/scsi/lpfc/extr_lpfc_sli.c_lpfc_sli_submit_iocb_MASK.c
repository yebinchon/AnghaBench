#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  cmdidx; int /*<<< orphan*/  next_cmdidx; } ;
struct TYPE_8__ {TYPE_2__ sli3; } ;
struct TYPE_6__ {int /*<<< orphan*/  iocb_cmd; } ;
struct lpfc_sli_ring {size_t ringno; TYPE_3__ sli; TYPE_1__ stats; } ;
struct TYPE_10__ {int /*<<< orphan*/  ulpIoTag; } ;
struct lpfc_iocbq {scalar_t__ iocb_cmpl; TYPE_5__ iocb; int /*<<< orphan*/  iotag; } ;
struct lpfc_hba {TYPE_4__* host_gp; int /*<<< orphan*/  iocb_cmd_size; int /*<<< orphan*/  hbalock; } ;
struct TYPE_9__ {int /*<<< orphan*/  cmdPutInx; } ;
typedef  int /*<<< orphan*/  IOCB_t ;

/* Variables and functions */
 size_t LPFC_ELS_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,struct lpfc_sli_ring*,struct lpfc_iocbq*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC7(struct lpfc_hba *phba, struct lpfc_sli_ring *pring,
		IOCB_t *iocb, struct lpfc_iocbq *nextiocb)
{
	FUNC1(&phba->hbalock);
	/*
	 * Set up an iotag
	 */
	nextiocb->iocb.ulpIoTag = (nextiocb->iocb_cmpl) ? nextiocb->iotag : 0;


	if (pring->ringno == LPFC_ELS_RING) {
		FUNC2(phba,
			"IOCB cmd ring:   wd4:x%08x wd6:x%08x wd7:x%08x",
			*(((uint32_t *) &nextiocb->iocb) + 4),
			*(((uint32_t *) &nextiocb->iocb) + 6),
			*(((uint32_t *) &nextiocb->iocb) + 7));
	}

	/*
	 * Issue iocb command to adapter
	 */
	FUNC3(&nextiocb->iocb, iocb, phba->iocb_cmd_size);
	FUNC5();
	pring->stats.iocb_cmd++;

	/*
	 * If there is no completion routine to call, we can release the
	 * IOCB buffer back right now. For IOCBs, like QUE_RING_BUF,
	 * that have no rsp ring completion, iocb_cmpl MUST be NULL.
	 */
	if (nextiocb->iocb_cmpl)
		FUNC4(phba, pring, nextiocb);
	else
		FUNC0(phba, nextiocb);

	/*
	 * Let the HBA know what IOCB slot will be the next one the
	 * driver will put a command into.
	 */
	pring->sli.sli3.cmdidx = pring->sli.sli3.next_cmdidx;
	FUNC6(pring->sli.sli3.cmdidx, &phba->host_gp[pring->ringno].cmdPutInx);
}