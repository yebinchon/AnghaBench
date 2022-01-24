#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {int /*<<< orphan*/  vpi; struct lpfc_hba* phba; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; } ;
struct TYPE_6__ {int /*<<< orphan*/ * ctx_ndlp; int /*<<< orphan*/  mbox_cmpl; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_MBOX ; 
 int LOG_VPORT ; 
 int /*<<< orphan*/  LPFC_MBOX_TMO ; 
 scalar_t__ LPFC_SLI_REV3 ; 
 int /*<<< orphan*/  LPFC_UNREG_ALL_DFLT_RPIS ; 
 int MBX_NOT_FINISHED ; 
 int MBX_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ,int,char*,int) ; 
 int /*<<< orphan*/  lpfc_sli_def_mbox_cmpl ; 
 int FUNC1 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct lpfc_vport *vport)
{
	struct lpfc_hba  *phba  = vport->phba;
	LPFC_MBOXQ_t     *mbox;
	int rc;

	/* Unreg DID is an SLI3 operation. */
	if (phba->sli_rev > LPFC_SLI_REV3)
		return;

	mbox = FUNC3(phba->mbox_mem_pool, GFP_KERNEL);
	if (mbox) {
		FUNC2(phba, vport->vpi, LPFC_UNREG_ALL_DFLT_RPIS,
			       mbox);
		mbox->vport = vport;
		mbox->mbox_cmpl = lpfc_sli_def_mbox_cmpl;
		mbox->ctx_ndlp = NULL;
		rc = FUNC1(phba, mbox, LPFC_MBOX_TMO);
		if (rc != MBX_TIMEOUT)
			FUNC4(mbox, phba->mbox_mem_pool);

		if ((rc == MBX_TIMEOUT) || (rc == MBX_NOT_FINISHED))
			FUNC0(vport, KERN_ERR, LOG_MBOX | LOG_VPORT,
					 "1815 Could not issue "
					 "unreg_did (default rpis) status %d\n",
					 rc);
	}
}