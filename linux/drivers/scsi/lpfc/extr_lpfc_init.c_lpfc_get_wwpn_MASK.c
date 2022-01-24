#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_10__ {scalar_t__ portname; } ;
struct TYPE_11__ {TYPE_2__ varRDnvp; } ;
struct TYPE_12__ {TYPE_3__ un; } ;
struct TYPE_9__ {TYPE_4__ mb; int /*<<< orphan*/  mqe; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
typedef  TYPE_4__ MAILBOX_t ;
typedef  TYPE_5__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_SLI ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int /*<<< orphan*/  MBX_POLL ; 
 int MBX_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lpfc_mqe_command ; 
 int /*<<< orphan*/  lpfc_mqe_status ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,TYPE_5__*) ; 
 int FUNC4 (struct lpfc_hba*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static uint64_t
FUNC9(struct lpfc_hba *phba)
{
	uint64_t wwn;
	int rc;
	LPFC_MBOXQ_t *mboxq;
	MAILBOX_t *mb;

	mboxq = (LPFC_MBOXQ_t *) FUNC6(phba->mbox_mem_pool,
						GFP_KERNEL);
	if (!mboxq)
		return (uint64_t)-1;

	/* First get WWN of HBA instance */
	FUNC3(phba, mboxq);
	rc = FUNC4(phba, mboxq, MBX_POLL);
	if (rc != MBX_SUCCESS) {
		FUNC2(phba, KERN_ERR, LOG_SLI,
				"6019 Mailbox failed , mbxCmd x%x "
				"READ_NV, mbxStatus x%x\n",
				FUNC1(lpfc_mqe_command, &mboxq->u.mqe),
				FUNC1(lpfc_mqe_status, &mboxq->u.mqe));
		FUNC7(mboxq, phba->mbox_mem_pool);
		return (uint64_t) -1;
	}
	mb = &mboxq->u.mb;
	FUNC5(&wwn, (char *)mb->un.varRDnvp.portname, sizeof(uint64_t));
	/* wwn is WWPN of HBA instance */
	FUNC7(mboxq, phba->mbox_mem_pool);
	if (phba->sli_rev == LPFC_SLI_REV4)
		return FUNC0(wwn);
	else
		return FUNC8(wwn, 32);
}