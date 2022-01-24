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
typedef  unsigned long uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  u32 ;
struct serv_parm {int /*<<< orphan*/  portName; } ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_rport_data {struct lpfc_nodelist* pnode; } ;
struct lpfc_nvme_rport {int dummy; } ;
struct lpfc_nodelist {int nlp_type; int nlp_DID; int nlp_flag; unsigned long* active_rrqs_xri_bitmap; int /*<<< orphan*/  nlp_fc4_type; struct fc_rport* rport; struct lpfc_nvme_rport* nrport; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_portname; int /*<<< orphan*/  nlp_prev_state; struct lpfc_vport* vport; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_hba {scalar_t__ sli_rev; int cfg_rrq_xri_bitmap_sz; int /*<<< orphan*/  active_rrq_pool; int /*<<< orphan*/  ndlp_lock; } ;
struct fc_rport {int /*<<< orphan*/  dev; struct lpfc_rport_data* dd_data; } ;
struct Scsi_Host {int /*<<< orphan*/ * host_lock; } ;

/* Variables and functions */
 int FC_FABRIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KERN_INFO ; 
 int LOG_ELS ; 
 int LOG_NODE ; 
 scalar_t__ LPFC_SLI_REV4 ; 
 scalar_t__ FUNC0 (struct lpfc_nodelist*) ; 
 int NLP_FABRIC ; 
 int NLP_RPI_REGISTERED ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_STE_MAPPED_NODE ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_UNMAPPED_NODE ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int NLP_UNREG_INP ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC4 (struct lpfc_vport*,int /*<<< orphan*/ *) ; 
 struct lpfc_nodelist* FUNC5 (struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC6 (struct lpfc_vport*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC8 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct lpfc_vport*,int /*<<< orphan*/ ,int,char*,int,int,...) ; 
 struct Scsi_Host* FUNC10 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC11 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,unsigned long*,int) ; 
 int /*<<< orphan*/  FUNC13 (unsigned long*,unsigned long*,int) ; 
 unsigned long* FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (unsigned long*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct lpfc_nodelist *
FUNC20(struct lpfc_hba *phba, uint32_t *prsp,
			 struct lpfc_nodelist *ndlp)
{
	struct lpfc_vport *vport = ndlp->vport;
	struct Scsi_Host *shost = FUNC10(vport);
	struct lpfc_nodelist *new_ndlp;
	struct lpfc_rport_data *rdata;
	struct fc_rport *rport;
	struct serv_parm *sp;
	uint8_t  name[sizeof(struct lpfc_name)];
	uint32_t rc, keepDID = 0, keep_nlp_flag = 0;
	uint32_t keep_new_nlp_flag = 0;
	uint16_t keep_nlp_state;
	u32 keep_nlp_fc4_type = 0;
	struct lpfc_nvme_rport *keep_nrport = NULL;
	int  put_node;
	int  put_rport;
	unsigned long *active_rrqs_xri_bitmap = NULL;

	/* Fabric nodes can have the same WWPN so we don't bother searching
	 * by WWPN.  Just return the ndlp that was given to us.
	 */
	if (ndlp->nlp_type & NLP_FABRIC)
		return ndlp;

	sp = (struct serv_parm *) ((uint8_t *) prsp + sizeof(uint32_t));
	FUNC16(name, 0, sizeof(struct lpfc_name));

	/* Now we find out if the NPort we are logging into, matches the WWPN
	 * we have for that ndlp. If not, we have some work to do.
	 */
	new_ndlp = FUNC4(vport, &sp->portName);

	/* return immediately if the WWPN matches ndlp */
	if (new_ndlp == ndlp && FUNC0(new_ndlp))
		return ndlp;

	if (phba->sli_rev == LPFC_SLI_REV4) {
		active_rrqs_xri_bitmap = FUNC14(phba->active_rrq_pool,
						       GFP_KERNEL);
		if (active_rrqs_xri_bitmap)
			FUNC16(active_rrqs_xri_bitmap, 0,
			       phba->cfg_rrq_xri_bitmap_sz);
	}

	FUNC9(vport, KERN_INFO, LOG_ELS | LOG_NODE,
			 "3178 PLOGI confirm: ndlp x%x x%x x%x: "
			 "new_ndlp x%x x%x x%x\n",
			 ndlp->nlp_DID, ndlp->nlp_flag,  ndlp->nlp_fc4_type,
			 (new_ndlp ? new_ndlp->nlp_DID : 0),
			 (new_ndlp ? new_ndlp->nlp_flag : 0),
			 (new_ndlp ? new_ndlp->nlp_fc4_type : 0));

	if (!new_ndlp) {
		rc = FUNC12(&ndlp->nlp_portname, name,
			    sizeof(struct lpfc_name));
		if (!rc) {
			if (active_rrqs_xri_bitmap)
				FUNC15(active_rrqs_xri_bitmap,
					     phba->active_rrq_pool);
			return ndlp;
		}
		new_ndlp = FUNC6(vport, ndlp->nlp_DID);
		if (!new_ndlp) {
			if (active_rrqs_xri_bitmap)
				FUNC15(active_rrqs_xri_bitmap,
					     phba->active_rrq_pool);
			return ndlp;
		}
	} else if (!FUNC0(new_ndlp)) {
		rc = FUNC12(&ndlp->nlp_portname, name,
			    sizeof(struct lpfc_name));
		if (!rc) {
			if (active_rrqs_xri_bitmap)
				FUNC15(active_rrqs_xri_bitmap,
					     phba->active_rrq_pool);
			return ndlp;
		}
		new_ndlp = FUNC3(vport, new_ndlp,
						NLP_STE_UNUSED_NODE);
		if (!new_ndlp) {
			if (active_rrqs_xri_bitmap)
				FUNC15(active_rrqs_xri_bitmap,
					     phba->active_rrq_pool);
			return ndlp;
		}
		keepDID = new_ndlp->nlp_DID;
		if ((phba->sli_rev == LPFC_SLI_REV4) && active_rrqs_xri_bitmap)
			FUNC13(active_rrqs_xri_bitmap,
			       new_ndlp->active_rrqs_xri_bitmap,
			       phba->cfg_rrq_xri_bitmap_sz);
	} else {
		keepDID = new_ndlp->nlp_DID;
		if (phba->sli_rev == LPFC_SLI_REV4 &&
		    active_rrqs_xri_bitmap)
			FUNC13(active_rrqs_xri_bitmap,
			       new_ndlp->active_rrqs_xri_bitmap,
			       phba->cfg_rrq_xri_bitmap_sz);
	}

	/* At this point in this routine, we know new_ndlp will be
	 * returned. however, any previous GID_FTs that were done
	 * would have updated nlp_fc4_type in ndlp, so we must ensure
	 * new_ndlp has the right value.
	 */
	if (vport->fc_flag & FC_FABRIC) {
		keep_nlp_fc4_type = new_ndlp->nlp_fc4_type;
		new_ndlp->nlp_fc4_type = ndlp->nlp_fc4_type;
	}

	FUNC11(vport, new_ndlp);
	new_ndlp->nlp_DID = ndlp->nlp_DID;
	new_ndlp->nlp_prev_state = ndlp->nlp_prev_state;
	if (phba->sli_rev == LPFC_SLI_REV4)
		FUNC13(new_ndlp->active_rrqs_xri_bitmap,
		       ndlp->active_rrqs_xri_bitmap,
		       phba->cfg_rrq_xri_bitmap_sz);

	FUNC18(shost->host_lock);
	keep_new_nlp_flag = new_ndlp->nlp_flag;
	keep_nlp_flag = ndlp->nlp_flag;
	new_ndlp->nlp_flag = ndlp->nlp_flag;

	/* if new_ndlp had NLP_UNREG_INP set, keep it */
	if (keep_new_nlp_flag & NLP_UNREG_INP)
		new_ndlp->nlp_flag |= NLP_UNREG_INP;
	else
		new_ndlp->nlp_flag &= ~NLP_UNREG_INP;

	/* if new_ndlp had NLP_RPI_REGISTERED set, keep it */
	if (keep_new_nlp_flag & NLP_RPI_REGISTERED)
		new_ndlp->nlp_flag |= NLP_RPI_REGISTERED;
	else
		new_ndlp->nlp_flag &= ~NLP_RPI_REGISTERED;

	ndlp->nlp_flag = keep_new_nlp_flag;

	/* if ndlp had NLP_UNREG_INP set, keep it */
	if (keep_nlp_flag & NLP_UNREG_INP)
		ndlp->nlp_flag |= NLP_UNREG_INP;
	else
		ndlp->nlp_flag &= ~NLP_UNREG_INP;

	/* if ndlp had NLP_RPI_REGISTERED set, keep it */
	if (keep_nlp_flag & NLP_RPI_REGISTERED)
		ndlp->nlp_flag |= NLP_RPI_REGISTERED;
	else
		ndlp->nlp_flag &= ~NLP_RPI_REGISTERED;

	FUNC19(shost->host_lock);

	/* Set nlp_states accordingly */
	keep_nlp_state = new_ndlp->nlp_state;
	FUNC8(vport, new_ndlp, ndlp->nlp_state);

	/* interchange the nvme remoteport structs */
	keep_nrport = new_ndlp->nrport;
	new_ndlp->nrport = ndlp->nrport;

	/* Move this back to NPR state */
	if (FUNC12(&ndlp->nlp_portname, name, sizeof(struct lpfc_name)) == 0) {
		/* The new_ndlp is replacing ndlp totally, so we need
		 * to put ndlp on UNUSED list and try to free it.
		 */
		FUNC9(vport, KERN_INFO, LOG_ELS,
			 "3179 PLOGI confirm NEW: %x %x\n",
			 new_ndlp->nlp_DID, keepDID);

		/* Fix up the rport accordingly */
		rport =  ndlp->rport;
		if (rport) {
			rdata = rport->dd_data;
			if (rdata->pnode == ndlp) {
				/* break the link before dropping the ref */
				ndlp->rport = NULL;
				FUNC7(ndlp);
				rdata->pnode = FUNC5(new_ndlp);
				new_ndlp->rport = rport;
			}
			new_ndlp->nlp_type = ndlp->nlp_type;
		}

		/* Fix up the nvme rport */
		if (ndlp->nrport) {
			ndlp->nrport = NULL;
			FUNC7(ndlp);
		}

		/* We shall actually free the ndlp with both nlp_DID and
		 * nlp_portname fields equals 0 to avoid any ndlp on the
		 * nodelist never to be used.
		 */
		if (ndlp->nlp_DID == 0) {
			FUNC18(&phba->ndlp_lock);
			FUNC1(ndlp);
			FUNC19(&phba->ndlp_lock);
		}

		/* Two ndlps cannot have the same did on the nodelist.
		 * Note: for this case, ndlp has a NULL WWPN so setting
		 * the nlp_fc4_type isn't required.
		 */
		ndlp->nlp_DID = keepDID;
		FUNC8(vport, ndlp, keep_nlp_state);
		if (phba->sli_rev == LPFC_SLI_REV4 &&
		    active_rrqs_xri_bitmap)
			FUNC13(ndlp->active_rrqs_xri_bitmap,
			       active_rrqs_xri_bitmap,
			       phba->cfg_rrq_xri_bitmap_sz);

		if (!FUNC0(ndlp))
			FUNC2(vport, ndlp);
	}
	else {
		FUNC9(vport, KERN_INFO, LOG_ELS,
			 "3180 PLOGI confirm SWAP: %x %x\n",
			 new_ndlp->nlp_DID, keepDID);

		FUNC11(vport, ndlp);

		/* Two ndlps cannot have the same did and the fc4
		 * type must be transferred because the ndlp is in
		 * flight.
		 */
		ndlp->nlp_DID = keepDID;
		ndlp->nlp_fc4_type = keep_nlp_fc4_type;

		if (phba->sli_rev == LPFC_SLI_REV4 &&
		    active_rrqs_xri_bitmap)
			FUNC13(ndlp->active_rrqs_xri_bitmap,
			       active_rrqs_xri_bitmap,
			       phba->cfg_rrq_xri_bitmap_sz);

		/* Since we are switching over to the new_ndlp,
		 * reset the old ndlp state
		 */
		if ((ndlp->nlp_state == NLP_STE_UNMAPPED_NODE) ||
		    (ndlp->nlp_state == NLP_STE_MAPPED_NODE))
			keep_nlp_state = NLP_STE_NPR_NODE;
		FUNC8(vport, ndlp, keep_nlp_state);

		/* Previous ndlp no longer active with nvme host transport.
		 * Remove reference from earlier registration unless the
		 * nvme host took care of it.
		 */
		if (ndlp->nrport)
			FUNC7(ndlp);
		ndlp->nrport = keep_nrport;

		/* Fix up the rport accordingly */
		rport = ndlp->rport;
		if (rport) {
			rdata = rport->dd_data;
			put_node = rdata->pnode != NULL;
			put_rport = ndlp->rport != NULL;
			rdata->pnode = NULL;
			ndlp->rport = NULL;
			if (put_node)
				FUNC7(ndlp);
			if (put_rport)
				FUNC17(&rport->dev);
		}
	}
	if (phba->sli_rev == LPFC_SLI_REV4 &&
	    active_rrqs_xri_bitmap)
		FUNC15(active_rrqs_xri_bitmap,
			     phba->active_rrq_pool);

	FUNC9(vport, KERN_INFO, LOG_ELS | LOG_NODE,
			 "3173 PLOGI confirm exit: new_ndlp x%x x%x x%x\n",
			 new_ndlp->nlp_DID, new_ndlp->nlp_flag,
			 new_ndlp->nlp_fc4_type);

	return new_ndlp;
}