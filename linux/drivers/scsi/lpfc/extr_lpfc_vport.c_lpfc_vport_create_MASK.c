#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  portName; int /*<<< orphan*/  nodeName; } ;
struct TYPE_9__ {int /*<<< orphan*/  wwn; } ;
struct TYPE_10__ {TYPE_3__ u; } ;
struct TYPE_7__ {int /*<<< orphan*/  wwn; } ;
struct TYPE_8__ {TYPE_1__ u; } ;
struct lpfc_vport {int vpi; int fc_flag; scalar_t__ port_state; int /*<<< orphan*/  fdmi_port_mask; int /*<<< orphan*/  fdmi_hba_mask; int /*<<< orphan*/  load_flag; struct fc_vport* fc_vport; int /*<<< orphan*/  cfg_enable_fc4_type; int /*<<< orphan*/  cfg_lun_queue_depth; TYPE_5__ fc_sparam; TYPE_4__ fc_nodename; TYPE_2__ fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_hba {int sli_rev; scalar_t__ cfg_fdmi_on; scalar_t__ link_state; scalar_t__ fc_topology; int link_flag; TYPE_6__* pport; scalar_t__ cfg_enable_SmartSAN; int /*<<< orphan*/  max_vpi; scalar_t__ nvmet_support; int /*<<< orphan*/  cfg_enable_npiv; } ;
struct fc_vport {scalar_t__ dd_data; int /*<<< orphan*/  port_name; int /*<<< orphan*/  node_name; int /*<<< orphan*/  dev; struct Scsi_Host* shost; } ;
struct Scsi_Host {scalar_t__ hostdata; } ;
struct TYPE_12__ {int /*<<< orphan*/  fdmi_port_mask; int /*<<< orphan*/  fdmi_hba_mask; int /*<<< orphan*/  cfg_lun_queue_depth; } ;

/* Variables and functions */
 int EINTR ; 
 int /*<<< orphan*/  FC_ALLOW_FDMI ; 
 int FC_VFI_REGISTERED ; 
 int /*<<< orphan*/  FC_VPORT_DISABLED ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  FC_VPORT_LINKDOWN ; 
 int FC_VPORT_NEEDS_INIT_VPI ; 
 int /*<<< orphan*/  FC_VPORT_NO_FABRIC_SUPP ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LOG_VPORT ; 
 int /*<<< orphan*/  LPFC_ENABLE_FCP ; 
 scalar_t__ LPFC_FABRIC_CFG_LINK ; 
 scalar_t__ LPFC_FDMI_SUPPORT ; 
 scalar_t__ LPFC_LINK_UP ; 
 int LPFC_SLI_REV4 ; 
 scalar_t__ LPFC_TOPOLOGY_LOOP ; 
 int LS_NPIV_FAB_SUPPORTED ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ NLP_STE_UNMAPPED_NODE ; 
 int VPORT_ERROR ; 
 int VPORT_INVAL ; 
 int VPORT_NORESOURCES ; 
 int VPORT_OK ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int FUNC3 (struct lpfc_hba*) ; 
 struct lpfc_vport* FUNC4 (struct lpfc_hba*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 struct lpfc_nodelist* FUNC6 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_hba*,int) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_hba*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC14 (struct lpfc_vport*) ; 
 int FUNC15 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC16 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC17 (struct lpfc_hba*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC18 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int FUNC19 (struct lpfc_hba*,struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC22(struct fc_vport *fc_vport, bool disable)
{
	struct lpfc_nodelist *ndlp;
	struct Scsi_Host *shost = fc_vport->shost;
	struct lpfc_vport *pport = (struct lpfc_vport *) shost->hostdata;
	struct lpfc_hba   *phba = pport->phba;
	struct lpfc_vport *vport = NULL;
	int instance;
	int vpi;
	int rc = VPORT_ERROR;
	int status;

	if ((phba->sli_rev < 3) || !(phba->cfg_enable_npiv)) {
		FUNC11(phba, KERN_ERR, LOG_VPORT,
				"1808 Create VPORT failed: "
				"NPIV is not enabled: SLImode:%d\n",
				phba->sli_rev);
		rc = VPORT_INVAL;
		goto error_out;
	}

	/* NPIV is not supported if HBA has NVME Target enabled */
	if (phba->nvmet_support) {
		FUNC11(phba, KERN_ERR, LOG_VPORT,
				"3189 Create VPORT failed: "
				"NPIV is not supported on NVME Target\n");
		rc = VPORT_INVAL;
		goto error_out;
	}

	vpi = FUNC3(phba);
	if (vpi == 0) {
		FUNC11(phba, KERN_ERR, LOG_VPORT,
				"1809 Create VPORT failed: "
				"Max VPORTs (%d) exceeded\n",
				phba->max_vpi);
		rc = VPORT_NORESOURCES;
		goto error_out;
	}

	/* Assign an unused board number */
	if ((instance = FUNC8()) < 0) {
		FUNC11(phba, KERN_ERR, LOG_VPORT,
				"1810 Create VPORT failed: Cannot get "
				"instance number\n");
		FUNC7(phba, vpi);
		rc = VPORT_NORESOURCES;
		goto error_out;
	}

	vport = FUNC4(phba, instance, &fc_vport->dev);
	if (!vport) {
		FUNC11(phba, KERN_ERR, LOG_VPORT,
				"1811 Create VPORT failed: vpi x%x\n", vpi);
		FUNC7(phba, vpi);
		rc = VPORT_NORESOURCES;
		goto error_out;
	}

	vport->vpi = vpi;
	FUNC5(vport);

	if ((status = FUNC19(phba, vport))) {
		if (status == -EINTR) {
			FUNC12(vport, KERN_ERR, LOG_VPORT,
					 "1831 Create VPORT Interrupted.\n");
			rc = VPORT_ERROR;
		} else {
			FUNC12(vport, KERN_ERR, LOG_VPORT,
					 "1813 Create VPORT failed. "
					 "Cannot get sparam\n");
			rc = VPORT_NORESOURCES;
		}
		FUNC7(phba, vpi);
		FUNC1(vport);
		goto error_out;
	}

	FUNC21(fc_vport->node_name, vport->fc_nodename.u.wwn);
	FUNC21(fc_vport->port_name, vport->fc_portname.u.wwn);

	FUNC20(&vport->fc_sparam.portName, vport->fc_portname.u.wwn, 8);
	FUNC20(&vport->fc_sparam.nodeName, vport->fc_nodename.u.wwn, 8);

	if (!FUNC17(phba, &vport->fc_sparam.nodeName, "WWNN") ||
	    !FUNC17(phba, &vport->fc_sparam.portName, "WWPN")) {
		FUNC12(vport, KERN_ERR, LOG_VPORT,
				 "1821 Create VPORT failed. "
				 "Invalid WWN format\n");
		FUNC7(phba, vpi);
		FUNC1(vport);
		rc = VPORT_INVAL;
		goto error_out;
	}

	if (!FUNC16(phba, vport)) {
		FUNC12(vport, KERN_ERR, LOG_VPORT,
				 "1823 Create VPORT failed. "
				 "Duplicate WWN on HBA\n");
		FUNC7(phba, vpi);
		FUNC1(vport);
		rc = VPORT_INVAL;
		goto error_out;
	}

	/* Create binary sysfs attribute for vport */
	FUNC2(vport);

	/* Set the DFT_LUN_Q_DEPTH accordingly */
	vport->cfg_lun_queue_depth  = phba->pport->cfg_lun_queue_depth;

	/* Only the physical port can support NVME for now */
	vport->cfg_enable_fc4_type = LPFC_ENABLE_FCP;

	*(struct lpfc_vport **)fc_vport->dd_data = vport;
	vport->fc_vport = fc_vport;

	/* At this point we are fully registered with SCSI Layer.  */
	vport->load_flag |= FC_ALLOW_FDMI;
	if (phba->cfg_enable_SmartSAN ||
	    (phba->cfg_fdmi_on == LPFC_FDMI_SUPPORT)) {
		/* Setup appropriate attribute masks */
		vport->fdmi_hba_mask = phba->pport->fdmi_hba_mask;
		vport->fdmi_port_mask = phba->pport->fdmi_port_mask;
	}

	/*
	 * In SLI4, the vpi must be activated before it can be used
	 * by the port.
	 */
	if ((phba->sli_rev == LPFC_SLI_REV4) &&
	    (pport->fc_flag & FC_VFI_REGISTERED)) {
		rc = FUNC15(vport);
		if (rc) {
			FUNC11(phba, KERN_ERR, LOG_VPORT,
					"1838 Failed to INIT_VPI on vpi %d "
					"status %d\n", vpi, rc);
			rc = VPORT_NORESOURCES;
			FUNC7(phba, vpi);
			goto error_out;
		}
	} else if (phba->sli_rev == LPFC_SLI_REV4) {
		/*
		 * Driver cannot INIT_VPI now. Set the flags to
		 * init_vpi when reg_vfi complete.
		 */
		vport->fc_flag |= FC_VPORT_NEEDS_INIT_VPI;
		FUNC18(vport, FC_VPORT_LINKDOWN);
		rc = VPORT_OK;
		goto out;
	}

	if ((phba->link_state < LPFC_LINK_UP) ||
	    (pport->port_state < LPFC_FABRIC_CFG_LINK) ||
	    (phba->fc_topology == LPFC_TOPOLOGY_LOOP)) {
		FUNC18(vport, FC_VPORT_LINKDOWN);
		rc = VPORT_OK;
		goto out;
	}

	if (disable) {
		FUNC18(vport, FC_VPORT_DISABLED);
		rc = VPORT_OK;
		goto out;
	}

	/* Use the Physical nodes Fabric NDLP to determine if the link is
	 * up and ready to FDISC.
	 */
	ndlp = FUNC6(phba->pport, Fabric_DID);
	if (ndlp && FUNC0(ndlp) &&
	    ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) {
		if (phba->link_flag & LS_NPIV_FAB_SUPPORTED) {
			FUNC13(vport);
			FUNC10(vport);
		} else {
			FUNC18(vport, FC_VPORT_NO_FABRIC_SUPP);
			FUNC12(vport, KERN_ERR, LOG_ELS,
					 "0262 No NPIV Fabric support\n");
		}
	} else {
		FUNC18(vport, FC_VPORT_FAILED);
	}
	rc = VPORT_OK;

out:
	FUNC12(vport, KERN_ERR, LOG_VPORT,
			"1825 Vport Created.\n");
	FUNC9(FUNC14(vport));
error_out:
	return rc;
}