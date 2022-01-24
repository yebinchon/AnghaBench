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
struct lpfc_vport {int /*<<< orphan*/  fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; TYPE_1__* pport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_8__ {int /*<<< orphan*/  mbox_cmpl; struct lpfc_vport* vport; } ;
struct TYPE_7__ {int /*<<< orphan*/  port_state; } ;
typedef  TYPE_2__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FC_VFI_REGISTERED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int LOG_DISCOVERY ; 
 int LOG_MBOX ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,int /*<<< orphan*/ ,int,char*,int,...) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int FUNC2 (struct lpfc_hba*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  lpfc_unregister_vfi_cmpl ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int
FUNC8(struct lpfc_vport *vport)
{
	struct lpfc_hba *phba = vport->phba;
	struct Scsi_Host *shost;
	LPFC_MBOXQ_t *mboxq;
	int rc;

	mboxq = FUNC4(phba->mbox_mem_pool, GFP_KERNEL);
	if (!mboxq) {
		FUNC0(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
				"2556 UNREG_VFI mbox allocation failed"
				"HBA state x%x\n", phba->pport->port_state);
		return -ENOMEM;
	}

	FUNC3(mboxq, vport);
	mboxq->vport = vport;
	mboxq->mbox_cmpl = lpfc_unregister_vfi_cmpl;

	rc = FUNC2(phba, mboxq, MBX_NOWAIT);
	if (rc == MBX_NOT_FINISHED) {
		FUNC0(phba, KERN_ERR, LOG_DISCOVERY|LOG_MBOX,
				"2557 UNREG_VFI issue mbox failed rc x%x "
				"HBA state x%x\n",
				rc, phba->pport->port_state);
		FUNC5(mboxq, phba->mbox_mem_pool);
		return -EIO;
	}

	shost = FUNC1(vport);
	FUNC6(shost->host_lock);
	vport->fc_flag &= ~FC_VFI_REGISTERED;
	FUNC7(shost->host_lock);
	return 0;
}