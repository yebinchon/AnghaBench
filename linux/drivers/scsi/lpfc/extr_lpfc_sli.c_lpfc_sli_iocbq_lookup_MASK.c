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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  size_t uint16_t ;
struct lpfc_sli_ring {int /*<<< orphan*/  txcmplq_cnt; int /*<<< orphan*/  ring_lock; } ;
struct TYPE_4__ {size_t ulpIoTag; } ;
struct lpfc_iocbq {int iocb_flag; TYPE_2__ iocb; int /*<<< orphan*/  list; } ;
struct TYPE_3__ {size_t last_iotag; struct lpfc_iocbq** iocbq_lookup; } ;
struct lpfc_hba {scalar_t__ sli_rev; TYPE_1__ sli; int /*<<< orphan*/  hbalock; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 int LPFC_IO_ON_TXCMPLQ ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static struct lpfc_iocbq *
FUNC4(struct lpfc_hba *phba,
		      struct lpfc_sli_ring *pring,
		      struct lpfc_iocbq *prspiocb)
{
	struct lpfc_iocbq *cmd_iocb = NULL;
	uint16_t iotag;
	spinlock_t *temp_lock = NULL;
	unsigned long iflag = 0;

	if (phba->sli_rev == LPFC_SLI_REV4)
		temp_lock = &pring->ring_lock;
	else
		temp_lock = &phba->hbalock;

	FUNC2(temp_lock, iflag);
	iotag = prspiocb->iocb.ulpIoTag;

	if (iotag != 0 && iotag <= phba->sli.last_iotag) {
		cmd_iocb = phba->sli.iocbq_lookup[iotag];
		if (cmd_iocb->iocb_flag & LPFC_IO_ON_TXCMPLQ) {
			/* remove from txcmpl queue list */
			FUNC0(&cmd_iocb->list);
			cmd_iocb->iocb_flag &= ~LPFC_IO_ON_TXCMPLQ;
			pring->txcmplq_cnt--;
			FUNC3(temp_lock, iflag);
			return cmd_iocb;
		}
	}

	FUNC3(temp_lock, iflag);
	FUNC1(phba, KERN_ERR, LOG_SLI,
			"0317 iotag x%x is out of "
			"range: max iotag x%x wd0 x%x\n",
			iotag, phba->sli.last_iotag,
			*(((uint32_t *) &prspiocb->iocb) + 7));
	return NULL;
}