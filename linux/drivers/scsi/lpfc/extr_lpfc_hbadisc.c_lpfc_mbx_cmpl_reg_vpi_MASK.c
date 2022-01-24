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
struct lpfc_vport {int fc_flag; int /*<<< orphan*/  port_state; scalar_t__ num_disc_nodes; scalar_t__ fc_npr_cnt; int /*<<< orphan*/  vpi_state; int /*<<< orphan*/  cfg_enable_fc4_type; int /*<<< orphan*/  fc_myDID; } ;
struct lpfc_hba {int /*<<< orphan*/  mbox_mem_pool; int /*<<< orphan*/  nvmet_support; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_7__ {int mbxStatus; } ;
struct TYPE_6__ {TYPE_2__ mb; } ;
struct TYPE_8__ {TYPE_1__ u; struct lpfc_vport* vport; } ;
typedef  TYPE_2__ MAILBOX_t ;
typedef  TYPE_3__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int FC_FABRIC ; 
 int FC_NDISC_ACTIVE ; 
 int FC_PUBLIC_LOOP ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NODE ; 
 int /*<<< orphan*/  LPFC_ENABLE_BOTH ; 
 int /*<<< orphan*/  LPFC_ENABLE_NVME ; 
 int /*<<< orphan*/  LPFC_VPI_REGISTERED ; 
 int /*<<< orphan*/  LPFC_VPORT_READY ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_hba*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(struct lpfc_hba *phba, LPFC_MBOXQ_t *pmb)
{
	struct lpfc_vport *vport = pmb->vport;
	struct Scsi_Host  *shost = FUNC5(vport);
	MAILBOX_t *mb = &pmb->u.mb;

	switch (mb->mbxStatus) {
	case 0x0011:
	case 0x9601:
	case 0x9602:
		FUNC4(vport, KERN_INFO, LOG_NODE,
				 "0912 cmpl_reg_vpi, mb status = 0x%x\n",
				 mb->mbxStatus);
		FUNC6(vport, FC_VPORT_FAILED);
		FUNC8(shost->host_lock);
		vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);
		FUNC9(shost->host_lock);
		vport->fc_myDID = 0;

		if ((vport->cfg_enable_fc4_type == LPFC_ENABLE_BOTH) ||
		    (vport->cfg_enable_fc4_type == LPFC_ENABLE_NVME)) {
			if (phba->nvmet_support)
				FUNC3(phba);
			else
				FUNC2(vport);
		}
		goto out;
	}

	FUNC8(shost->host_lock);
	vport->vpi_state |= LPFC_VPI_REGISTERED;
	vport->fc_flag &= ~FC_VPORT_NEEDS_REG_VPI;
	FUNC9(shost->host_lock);
	vport->num_disc_nodes = 0;
	/* go thru NPR list and issue ELS PLOGIs */
	if (vport->fc_npr_cnt)
		FUNC1(vport);

	if (!vport->num_disc_nodes) {
		FUNC8(shost->host_lock);
		vport->fc_flag &= ~FC_NDISC_ACTIVE;
		FUNC9(shost->host_lock);
		FUNC0(vport);
	}
	vport->port_state = LPFC_VPORT_READY;

out:
	FUNC7(pmb, phba->mbox_mem_pool);
	return;
}