#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lpfc_vport {int fc_flag; int /*<<< orphan*/  load_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; } ;
struct lpfc_hba {scalar_t__ link_state; scalar_t__ fc_topology; int link_flag; int /*<<< orphan*/  pport; } ;
struct fc_vport {scalar_t__ dd_data; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_LOADING ; 
 int /*<<< orphan*/  FC_VPORT_FAILED ; 
 int /*<<< orphan*/  FC_VPORT_LINKDOWN ; 
 int FC_VPORT_NEEDS_INIT_VPI ; 
 int FC_VPORT_NEEDS_REG_VPI ; 
 int /*<<< orphan*/  FC_VPORT_NO_FABRIC_SUPP ; 
 int /*<<< orphan*/  Fabric_DID ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  LOG_ELS ; 
 int /*<<< orphan*/  LOG_VPORT ; 
 scalar_t__ LPFC_LINK_UP ; 
 scalar_t__ LPFC_TOPOLOGY_LOOP ; 
 int LS_NPIV_FAB_SUPPORTED ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 scalar_t__ NLP_STE_UNMAPPED_NODE ; 
 int VPORT_OK ; 
 struct lpfc_nodelist* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 struct Scsi_Host* FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC10(struct fc_vport *fc_vport)
{
	struct lpfc_vport *vport = *(struct lpfc_vport **)fc_vport->dd_data;
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_nodelist *ndlp = NULL;
	struct Scsi_Host *shost = FUNC6(vport);

	if ((phba->link_state < LPFC_LINK_UP) ||
	    (phba->fc_topology == LPFC_TOPOLOGY_LOOP)) {
		FUNC7(vport, FC_VPORT_LINKDOWN);
		return VPORT_OK;
	}

	FUNC8(shost->host_lock);
	vport->load_flag |= FC_LOADING;
	if (vport->fc_flag & FC_VPORT_NEEDS_INIT_VPI) {
		FUNC9(shost->host_lock);
		FUNC3(vport);
		goto out;
	}

	vport->fc_flag |= FC_VPORT_NEEDS_REG_VPI;
	FUNC9(shost->host_lock);

	/* Use the Physical nodes Fabric NDLP to determine if the link is
	 * up and ready to FDISC.
	 */
	ndlp = FUNC1(phba->pport, Fabric_DID);
	if (ndlp && FUNC0(ndlp)
	    && ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) {
		if (phba->link_flag & LS_NPIV_FAB_SUPPORTED) {
			FUNC5(vport);
			FUNC2(vport);
		} else {
			FUNC7(vport, FC_VPORT_NO_FABRIC_SUPP);
			FUNC4(vport, KERN_ERR, LOG_ELS,
					 "0264 No NPIV Fabric support\n");
		}
	} else {
		FUNC7(vport, FC_VPORT_FAILED);
	}

out:
	FUNC4(vport, KERN_ERR, LOG_VPORT,
			 "1827 Vport Enabled.\n");
	return VPORT_OK;
}