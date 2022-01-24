#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct TYPE_7__ {int /*<<< orphan*/  sli_flag; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  cfg_link_speed; int /*<<< orphan*/  cfg_topology; int /*<<< orphan*/  hbalock; int /*<<< orphan*/  HCregaddr; TYPE_1__ sli; } ;
struct TYPE_8__ {struct lpfc_vport* vport; int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_2__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HC_LAINT_ENA ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 int /*<<< orphan*/  LPFC_PROCESS_LA ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 int MBX_BUSY ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC3 (struct lpfc_hba*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC10(struct lpfc_vport *vport)
{
	struct lpfc_hba *phba = vport->phba;
	LPFC_MBOXQ_t *mbox;
	uint32_t control;
	int rc;

	FUNC2(vport, KERN_ERR, LOG_ELS,
			 "2851 Attempt link reset\n");
	mbox = FUNC4(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mbox) {
		FUNC1(phba, KERN_ERR, LOG_MBOX,
				"2852 Failed to allocate mbox memory");
		return 1;
	}

	/* Enable Link attention interrupts */
	if (phba->sli_rev <= LPFC_SLI_REV3) {
		FUNC7(&phba->hbalock);
		phba->sli.sli_flag |= LPFC_PROCESS_LA;
		control = FUNC6(phba->HCregaddr);
		control |= HC_LAINT_ENA;
		FUNC9(control, phba->HCregaddr);
		FUNC6(phba->HCregaddr); /* flush */
		FUNC8(&phba->hbalock);
	}

	FUNC0(phba, mbox, phba->cfg_topology,
		       phba->cfg_link_speed);
	mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
	mbox->vport = vport;
	rc = FUNC3(phba, mbox, MBX_NOWAIT);
	if ((rc != MBX_BUSY) && (rc != MBX_SUCCESS)) {
		FUNC1(phba, KERN_ERR, LOG_MBOX,
				"2853 Failed to issue INIT_LINK "
				"mbox command, rc:x%x\n", rc);
		FUNC5(mbox, phba->mbox_mem_pool);
		return 1;
	}

	return 0;
}