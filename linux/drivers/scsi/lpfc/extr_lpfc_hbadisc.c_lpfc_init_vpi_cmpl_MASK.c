#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct lpfc_vport {scalar_t__ port_state; int /*<<< orphan*/  fc_flag; } ;
struct lpfc_nodelist {int dummy; } ;
struct lpfc_hba {int link_flag; int /*<<< orphan*/  mbox_mem_pool; struct lpfc_vport* pport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {scalar_t__ mbxStatus; } ;
struct TYPE_7__ {TYPE_1__ mb; } ;
struct TYPE_8__ {TYPE_2__ u; struct lpfc_vport* vport; } ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  FC_VPORT_NEEDS_INIT_VPI ; 
 int /*<<< orphan*/  FC_VPORT_NO_FABRIC_SUPP ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_DISCOVERY ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LOG_MBOX ; 
 scalar_t__ LPFC_FDISC ; 
 int LS_NPIV_FAB_SUPPORTED ; 
 struct lpfc_nodelist* FUNC0 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*,struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void
FUNC9(struct lpfc_hba *phba, LPFC_MBOXQ_t *mboxq)
{
	struct lpfc_vport *vport = mboxq->vport;
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost = FUNC4(vport);

	if (mboxq->u.mb.mbxStatus) {
		FUNC2(vport, KERN_ERR,
				LOG_MBOX,
				"2609 Init VPI mailbox failed 0x%x\n",
				mboxq->u.mb.mbxStatus);
		FUNC6(mboxq, phba->mbox_mem_pool);
		FUNC5(vport, FC_VPORT_FAILED);
		return;
	}
	FUNC7(shost->host_lock);
	vport->fc_flag &= ~FC_VPORT_NEEDS_INIT_VPI;
	FUNC8(shost->host_lock);

	/* If this port is physical port or FDISC is done, do reg_vpi */
	if ((phba->pport == vport) || (vport->port_state == LPFC_FDISC)) {
			ndlp = FUNC0(vport, Fabric_DID);
			if (!ndlp)
				FUNC2(vport, KERN_ERR,
					LOG_DISCOVERY,
					"2731 Cannot find fabric "
					"controller node\n");
			else
				FUNC3(phba, vport, ndlp);
			FUNC6(mboxq, phba->mbox_mem_pool);
			return;
	}

	if (phba->link_flag & LS_NPIV_FAB_SUPPORTED)
		FUNC1(vport);
	else {
		FUNC5(vport, FC_VPORT_NO_FABRIC_SUPP);
		FUNC2(vport, KERN_ERR, LOG_ELS,
				 "2606 No NPIV Fabric support\n");
	}
	FUNC6(mboxq, phba->mbox_mem_pool);
	return;
}