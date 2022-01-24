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
struct serv_parm {int /*<<< orphan*/  nodeName; int /*<<< orphan*/  portName; } ;
struct lpfc_vport {int fc_flag; int /*<<< orphan*/  fc_myDID; int /*<<< orphan*/  fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_nodename; int /*<<< orphan*/  nlp_portname; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int /*<<< orphan*/  mbox_mem_pool; scalar_t__ fc_topology_changed; int /*<<< orphan*/  sli3_options; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;
struct TYPE_6__ {struct lpfc_vport* vport; int /*<<< orphan*/  mbox_cmpl; } ;
typedef  TYPE_1__ LPFC_MBOXQ_t ;

/* Variables and functions */
 int ENXIO ; 
 int FC_FABRIC ; 
 int FC_PT2PT ; 
 int FC_PT2PT_PLOGI ; 
 int FC_PUBLIC_LOOP ; 
 int FC_VFI_REGISTERED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  LPFC_SLI3_NPIV_ENABLED ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 int MBX_NOT_FINISHED ; 
 int /*<<< orphan*/  MBX_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  PT2PT_LocalID ; 
 int /*<<< orphan*/  PT2PT_RemoteID ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_hba*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_mbx_cmpl_local_config_link ; 
 struct lpfc_nodelist* FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 int FUNC9 (struct lpfc_hba*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_hba*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC17(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			  struct serv_parm *sp)
{
	struct Scsi_Host *shost = FUNC8(vport);
	struct lpfc_hba  *phba = vport->phba;
	LPFC_MBOXQ_t *mbox;
	int rc;

	FUNC15(shost->host_lock);
	vport->fc_flag &= ~(FC_FABRIC | FC_PUBLIC_LOOP);
	vport->fc_flag |= FC_PT2PT;
	FUNC16(shost->host_lock);

	/* If we are pt2pt with another NPort, force NPIV off! */
	phba->sli3_options &= ~LPFC_SLI3_NPIV_ENABLED;

	/* If physical FC port changed, unreg VFI and ALL VPIs / RPIs */
	if ((phba->sli_rev == LPFC_SLI_REV4) && phba->fc_topology_changed) {
		FUNC10(phba);

		FUNC15(shost->host_lock);
		vport->fc_flag &= ~FC_VFI_REGISTERED;
		FUNC16(shost->host_lock);
		phba->fc_topology_changed = 0;
	}

	rc = FUNC11(&vport->fc_portname, &sp->portName,
		    sizeof(vport->fc_portname));

	if (rc >= 0) {
		/* This side will initiate the PLOGI */
		FUNC15(shost->host_lock);
		vport->fc_flag |= FC_PT2PT_PLOGI;
		FUNC16(shost->host_lock);

		/*
		 * N_Port ID cannot be 0, set our Id to LocalID
		 * the other side will be RemoteID.
		 */

		/* not equal */
		if (rc)
			vport->fc_myDID = PT2PT_LocalID;

		/* Decrement ndlp reference count indicating that ndlp can be
		 * safely released when other references to it are done.
		 */
		FUNC6(ndlp);

		ndlp = FUNC4(vport, PT2PT_RemoteID);
		if (!ndlp) {
			/*
			 * Cannot find existing Fabric ndlp, so allocate a
			 * new one
			 */
			ndlp = FUNC5(vport, PT2PT_RemoteID);
			if (!ndlp)
				goto fail;
		} else if (!FUNC0(ndlp)) {
			ndlp = FUNC3(vport, ndlp,
						NLP_STE_UNUSED_NODE);
			if(!ndlp)
				goto fail;
		}

		FUNC12(&ndlp->nlp_portname, &sp->portName,
		       sizeof(struct lpfc_name));
		FUNC12(&ndlp->nlp_nodename, &sp->nodeName,
		       sizeof(struct lpfc_name));
		/* Set state will put ndlp onto node list if not already done */
		FUNC7(vport, ndlp, NLP_STE_NPR_NODE);
		FUNC15(shost->host_lock);
		ndlp->nlp_flag |= NLP_NPR_2B_DISC;
		FUNC16(shost->host_lock);

		mbox = FUNC13(phba->mbox_mem_pool, GFP_KERNEL);
		if (!mbox)
			goto fail;

		FUNC1(phba, mbox);

		mbox->mbox_cmpl = lpfc_mbx_cmpl_local_config_link;
		mbox->vport = vport;
		rc = FUNC9(phba, mbox, MBX_NOWAIT);
		if (rc == MBX_NOT_FINISHED) {
			FUNC14(mbox, phba->mbox_mem_pool);
			goto fail;
		}
	} else {
		/* This side will wait for the PLOGI, decrement ndlp reference
		 * count indicating that ndlp can be released when other
		 * references to it are done.
		 */
		FUNC6(ndlp);

		/* Start discovery - this should just do CLEAR_LA */
		FUNC2(vport);
	}

	return 0;
fail:
	return -ENXIO;
}