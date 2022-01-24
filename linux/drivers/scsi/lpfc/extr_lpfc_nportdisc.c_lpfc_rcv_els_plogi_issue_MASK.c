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
typedef  scalar_t__ uint32_t ;
struct lpfc_vport {struct lpfc_hba* phba; } ;
struct lpfc_nodelist {scalar_t__ nlp_state; int /*<<< orphan*/  nlp_prev_state; int /*<<< orphan*/  nlp_last_elscmd; int /*<<< orphan*/  nlp_flag; int /*<<< orphan*/  nlp_delayfunc; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  ELS_CMD_ACC ; 
 int /*<<< orphan*/  ELS_CMD_PLOGI ; 
 int /*<<< orphan*/  NLP_DELAY_TMO ; 
 scalar_t__ NLP_EVT_RCV_LOGO ; 
 int /*<<< orphan*/  NLP_STE_NPR_NODE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 struct Scsi_Host* FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC9(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			 void *arg, uint32_t evt)
{
	struct Scsi_Host  *shost = FUNC4(vport);
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_iocbq *cmdiocb = (struct lpfc_iocbq *) arg;

	/* software abort outstanding PLOGI */
	FUNC0(phba, ndlp);

	if (evt == NLP_EVT_RCV_LOGO) {
		FUNC1(vport, ELS_CMD_ACC, cmdiocb, ndlp, NULL);
	} else {
		FUNC2(vport, ndlp, 0);
	}

	/* Put ndlp in npr state set plogi timer for 1 sec */
	FUNC5(&ndlp->nlp_delayfunc, jiffies + FUNC6(1000 * 1));
	FUNC7(shost->host_lock);
	ndlp->nlp_flag |= NLP_DELAY_TMO;
	FUNC8(shost->host_lock);
	ndlp->nlp_last_elscmd = ELS_CMD_PLOGI;
	ndlp->nlp_prev_state = NLP_STE_PLOGI_ISSUE;
	FUNC3(vport, ndlp, NLP_STE_NPR_NODE);

	return ndlp->nlp_state;
}