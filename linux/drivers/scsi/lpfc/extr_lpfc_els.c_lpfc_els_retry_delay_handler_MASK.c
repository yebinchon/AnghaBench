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
typedef  int uint32_t ;
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int nlp_last_elscmd; int nlp_flag; int nlp_retry; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_prev_state; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_delayfunc; struct lpfc_vport* vport; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
#define  ELS_CMD_ADISC 134 
#define  ELS_CMD_FDISC 133 
#define  ELS_CMD_FLOGI 132 
#define  ELS_CMD_LOGO 131 
#define  ELS_CMD_NVMEPRLI 130 
#define  ELS_CMD_PLOGI 129 
#define  ELS_CMD_PRLI 128 
 int FC_VPORT_NEEDS_INIT_VPI ; 
 int NLP_DELAY_TMO ; 
 int /*<<< orphan*/  NLP_STE_ADISC_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_LOGO_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_PRLI_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*,struct lpfc_nodelist*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(struct lpfc_nodelist *ndlp)
{
	struct lpfc_vport *vport = ndlp->vport;
	struct Scsi_Host  *shost = FUNC8(vport);
	uint32_t cmd, retry;

	FUNC9(shost->host_lock);
	cmd = ndlp->nlp_last_elscmd;
	ndlp->nlp_last_elscmd = 0;

	if (!(ndlp->nlp_flag & NLP_DELAY_TMO)) {
		FUNC10(shost->host_lock);
		return;
	}

	ndlp->nlp_flag &= ~NLP_DELAY_TMO;
	FUNC10(shost->host_lock);
	/*
	 * If a discovery event readded nlp_delayfunc after timer
	 * firing and before processing the timer, cancel the
	 * nlp_delayfunc.
	 */
	FUNC0(&ndlp->nlp_delayfunc);
	retry = ndlp->nlp_retry;
	ndlp->nlp_retry = 0;

	switch (cmd) {
	case ELS_CMD_FLOGI:
		FUNC3(vport, ndlp, retry);
		break;
	case ELS_CMD_PLOGI:
		if (!FUNC5(vport, ndlp->nlp_DID, retry)) {
			ndlp->nlp_prev_state = ndlp->nlp_state;
			FUNC7(vport, ndlp, NLP_STE_PLOGI_ISSUE);
		}
		break;
	case ELS_CMD_ADISC:
		if (!FUNC1(vport, ndlp, retry)) {
			ndlp->nlp_prev_state = ndlp->nlp_state;
			FUNC7(vport, ndlp, NLP_STE_ADISC_ISSUE);
		}
		break;
	case ELS_CMD_PRLI:
	case ELS_CMD_NVMEPRLI:
		if (!FUNC6(vport, ndlp, retry)) {
			ndlp->nlp_prev_state = ndlp->nlp_state;
			FUNC7(vport, ndlp, NLP_STE_PRLI_ISSUE);
		}
		break;
	case ELS_CMD_LOGO:
		if (!FUNC4(vport, ndlp, retry)) {
			ndlp->nlp_prev_state = ndlp->nlp_state;
			FUNC7(vport, ndlp, NLP_STE_LOGO_ISSUE);
		}
		break;
	case ELS_CMD_FDISC:
		if (!(vport->fc_flag & FC_VPORT_NEEDS_INIT_VPI))
			FUNC2(vport, ndlp, retry);
		break;
	}
	return;
}