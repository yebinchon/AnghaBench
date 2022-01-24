#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct lpfc_vport {int fc_flag; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; } ;
struct TYPE_3__ {int /*<<< orphan*/  elsXmitSCR; } ;
struct lpfc_hba {TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct TYPE_4__ {int /*<<< orphan*/  Function; } ;
typedef  TYPE_2__ SCR ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_SCR ; 
 int FC_PT2PT ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  NLP_STE_UNUSED_NODE ; 
 int /*<<< orphan*/  SCR_FUNC_FULL ; 
 int /*<<< orphan*/  lpfc_cmpl_els_cmd ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_nodelist* FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct lpfc_nodelist* FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 struct lpfc_nodelist* FUNC6 (struct lpfc_vport*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_nodelist*) ; 
 struct lpfc_iocbq* FUNC8 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

int
FUNC11(struct lpfc_vport *vport, uint32_t nportid, uint8_t retry)
{
	struct lpfc_hba  *phba = vport->phba;
	struct lpfc_iocbq *elsiocb;
	uint8_t *pcmd;
	uint16_t cmdsize;
	struct lpfc_nodelist *ndlp;

	cmdsize = (sizeof(uint32_t) + sizeof(SCR));

	ndlp = FUNC5(vport, nportid);
	if (!ndlp) {
		ndlp = FUNC6(vport, nportid);
		if (!ndlp)
			return 1;
		FUNC4(vport, ndlp);
	} else if (!FUNC0(ndlp)) {
		ndlp = FUNC3(vport, ndlp, NLP_STE_UNUSED_NODE);
		if (!ndlp)
			return 1;
	}

	elsiocb = FUNC8(vport, 1, cmdsize, retry, ndlp,
				     ndlp->nlp_DID, ELS_CMD_SCR);

	if (!elsiocb) {
		/* This will trigger the release of the node just
		 * allocated
		 */
		FUNC7(ndlp);
		return 1;
	}

	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);

	*((uint32_t *) (pcmd)) = ELS_CMD_SCR;
	pcmd += sizeof(uint32_t);

	/* For SCR, remainder of payload is SCR parameter page */
	FUNC10(pcmd, 0, sizeof(SCR));
	((SCR *) pcmd)->Function = SCR_FUNC_FULL;

	FUNC1(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue SCR:       did:x%x",
		ndlp->nlp_DID, 0, 0);

	phba->fc_stat.elsXmitSCR++;
	elsiocb->iocb_cmpl = lpfc_cmpl_els_cmd;
	if (FUNC9(phba, LPFC_ELS_RING, elsiocb, 0) ==
	    IOCB_ERROR) {
		/* The additional lpfc_nlp_put will cause the following
		 * lpfc_els_free_iocb routine to trigger the rlease of
		 * the node.
		 */
		FUNC7(ndlp);
		FUNC2(phba, elsiocb);
		return 1;
	}
	/* This will cause the callback-function lpfc_cmpl_els_cmd to
	 * trigger the release of node.
	 */
	if (!(vport->fc_flag & FC_PT2PT))
		FUNC7(ndlp);
	return 0;
}