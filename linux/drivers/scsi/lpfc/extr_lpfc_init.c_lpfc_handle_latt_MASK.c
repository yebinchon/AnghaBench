#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  link_event; } ;
struct lpfc_sli {int /*<<< orphan*/  sli_flag; TYPE_2__* sli3_ring; TYPE_1__ slistat; } ;
struct lpfc_hba {int /*<<< orphan*/  link_state; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HAregaddr; int /*<<< orphan*/  HCregaddr; int /*<<< orphan*/  mbox_mem_pool; struct lpfc_sli sli; struct lpfc_vport* pport; } ;
struct lpfc_dmabuf {int /*<<< orphan*/  phys; int /*<<< orphan*/  virt; } ;
struct TYPE_9__ {struct lpfc_vport* vport; int /*<<< orphan*/  mbox_cmpl; } ;
struct TYPE_8__ {int /*<<< orphan*/  flag; } ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  volatile HA_LATT ; 
 int /*<<< orphan*/  volatile HC_LAINT_ENA ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 size_t LPFC_ELS_RING ; 
 int /*<<< orphan*/  LPFC_HBA_ERROR ; 
 int /*<<< orphan*/  LPFC_PROCESS_LA ; 
 int /*<<< orphan*/  LPFC_STOP_IOCB_EVENT ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_dmabuf*) ; 
 struct lpfc_dmabuf* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_read_topology ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,TYPE_3__*,struct lpfc_dmabuf*) ; 
 int FUNC8 (struct lpfc_hba*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  volatile,int /*<<< orphan*/ ) ; 

void
FUNC15(struct lpfc_hba *phba)
{
	struct lpfc_vport *vport = phba->pport;
	struct lpfc_sli   *psli = &phba->sli;
	LPFC_MBOXQ_t *pmb;
	volatile uint32_t control;
	struct lpfc_dmabuf *mp;
	int rc = 0;

	pmb = (LPFC_MBOXQ_t *)FUNC9(phba->mbox_mem_pool, GFP_KERNEL);
	if (!pmb) {
		rc = 1;
		goto lpfc_handle_latt_err_exit;
	}

	mp = FUNC1(sizeof(struct lpfc_dmabuf), GFP_KERNEL);
	if (!mp) {
		rc = 2;
		goto lpfc_handle_latt_free_pmb;
	}

	mp->virt = FUNC4(phba, 0, &mp->phys);
	if (!mp->virt) {
		rc = 3;
		goto lpfc_handle_latt_free_mp;
	}

	/* Cleanup any outstanding ELS commands */
	FUNC2(phba);

	psli->slistat.link_event++;
	FUNC7(phba, pmb, mp);
	pmb->mbox_cmpl = lpfc_mbx_cmpl_read_topology;
	pmb->vport = vport;
	/* Block ELS IOCBs until we have processed this mbox command */
	phba->sli.sli3_ring[LPFC_ELS_RING].flag |= LPFC_STOP_IOCB_EVENT;
	rc = FUNC8 (phba, pmb, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED) {
		rc = 4;
		goto lpfc_handle_latt_free_mbuf;
	}

	/* Clear Link Attention in HA REG */
	FUNC12(&phba->hbalock);
	FUNC14(HA_LATT, phba->HAregaddr);
	FUNC11(phba->HAregaddr); /* flush */
	FUNC13(&phba->hbalock);

	return;

lpfc_handle_latt_free_mbuf:
	phba->sli.sli3_ring[LPFC_ELS_RING].flag &= ~LPFC_STOP_IOCB_EVENT;
	FUNC5(phba, mp->virt, mp->phys);
lpfc_handle_latt_free_mp:
	FUNC0(mp);
lpfc_handle_latt_free_pmb:
	FUNC10(pmb, phba->mbox_mem_pool);
lpfc_handle_latt_err_exit:
	/* Enable Link attention interrupts */
	FUNC12(&phba->hbalock);
	psli->sli_flag |= LPFC_PROCESS_LA;
	control = FUNC11(phba->HCregaddr);
	control |= HC_LAINT_ENA;
	FUNC14(control, phba->HCregaddr);
	FUNC11(phba->HCregaddr); /* flush */

	/* Clear Link Attention in HA REG */
	FUNC14(HA_LATT, phba->HAregaddr);
	FUNC11(phba->HAregaddr); /* flush */
	FUNC13(&phba->hbalock);
	FUNC3(phba);
	phba->link_state = LPFC_HBA_ERROR;

	FUNC6(phba, KERN_ERR, LOG_MBOX,
		     "0300 LATT: Cannot issue READ_LA: Data:%d\n", rc);

	return;
}