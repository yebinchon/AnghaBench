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
struct lpfc_vport {int /*<<< orphan*/  fc_flag; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  mbox_cmpl; int /*<<< orphan*/  ctx_ndlp; struct lpfc_vport* vport; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  lpfc_cmpl_reg_new_vport ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,TYPE_1__*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(struct lpfc_hba *phba, struct lpfc_vport *vport,
			struct lpfc_nodelist *ndlp)
{
	struct Scsi_Host *shost = FUNC4(vport);
	LPFC_MBOXQ_t *mbox;

	mbox = FUNC7(phba->mbox_mem_pool, GFP_KERNEL);
	if (mbox) {
		FUNC3(vport, mbox);
		mbox->vport = vport;
		mbox->ctx_ndlp = FUNC0(ndlp);
		mbox->mbox_cmpl = lpfc_cmpl_reg_new_vport;
		if (FUNC5(phba, mbox, MBX_NOWAIT)
		    == MBX_NOT_FINISHED) {
			/* mailbox command not success, decrement ndlp
			 * reference count for this command
			 */
			FUNC1(ndlp);
			FUNC8(mbox, phba->mbox_mem_pool);

			FUNC2(vport, KERN_ERR, LOG_MBOX,
				"0253 Register VPI: Can't send mbox\n");
			goto mbox_err_exit;
		}
	} else {
		FUNC2(vport, KERN_ERR, LOG_MBOX,
				 "0254 Register VPI: no memory\n");
		goto mbox_err_exit;
	}
	return;

mbox_err_exit:
	FUNC6(vport, FC_VPORT_FAILED);
	FUNC9(shost->host_lock);
	vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
	FUNC10(shost->host_lock);
	return;
}