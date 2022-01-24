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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct lpfc_vport {int /*<<< orphan*/  fc_portname; int /*<<< orphan*/  fc_myDID; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_DID; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {int /*<<< orphan*/  iocb_cmpl; scalar_t__ context2; } ;
struct lpfc_hba {int dummy; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_LOGO ; 
 scalar_t__ IOCB_ERROR ; 
 int /*<<< orphan*/  LPFC_DISC_TRC_ELS_CMD ; 
 int /*<<< orphan*/  LPFC_ELS_RING ; 
 int /*<<< orphan*/  NLP_LOGO_SND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lpfc_cmpl_els_npiv_logo ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_hba*,struct lpfc_iocbq*) ; 
 struct lpfc_iocbq* FUNC3 (struct lpfc_vport*,int,int,int /*<<< orphan*/ ,struct lpfc_nodelist*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 scalar_t__ FUNC5 (struct lpfc_hba*,int /*<<< orphan*/ ,struct lpfc_iocbq*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

int
FUNC9(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
	struct Scsi_Host *shost = FUNC4(vport);
	struct lpfc_hba  *phba = vport->phba;
	struct lpfc_iocbq *elsiocb;
	uint8_t *pcmd;
	uint16_t cmdsize;

	cmdsize = 2 * sizeof(uint32_t) + sizeof(struct lpfc_name);
	elsiocb = FUNC3(vport, 1, cmdsize, 0, ndlp, ndlp->nlp_DID,
				     ELS_CMD_LOGO);
	if (!elsiocb)
		return 1;

	pcmd = (uint8_t *) (((struct lpfc_dmabuf *) elsiocb->context2)->virt);
	*((uint32_t *) (pcmd)) = ELS_CMD_LOGO;
	pcmd += sizeof(uint32_t);

	/* Fill in LOGO payload */
	*((uint32_t *) (pcmd)) = FUNC0(vport->fc_myDID);
	pcmd += sizeof(uint32_t);
	FUNC6(pcmd, &vport->fc_portname, sizeof(struct lpfc_name));

	FUNC1(vport, LPFC_DISC_TRC_ELS_CMD,
		"Issue LOGO npiv  did:x%x flg:x%x",
		ndlp->nlp_DID, ndlp->nlp_flag, 0);

	elsiocb->iocb_cmpl = lpfc_cmpl_els_npiv_logo;
	FUNC7(shost->host_lock);
	ndlp->nlp_flag |= NLP_LOGO_SND;
	FUNC8(shost->host_lock);
	if (FUNC5(phba, LPFC_ELS_RING, elsiocb, 0) ==
	    IOCB_ERROR) {
		FUNC7(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_LOGO_SND;
		FUNC8(shost->host_lock);
		FUNC2(phba, elsiocb);
		return 1;
	}
	return 0;
}