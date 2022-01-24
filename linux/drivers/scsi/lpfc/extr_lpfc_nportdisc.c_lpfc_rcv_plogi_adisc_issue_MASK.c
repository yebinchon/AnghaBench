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
typedef  int /*<<< orphan*/  uint32_t ;
struct lpfc_vport {scalar_t__ num_disc_nodes; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; int /*<<< orphan*/  nlp_DID; int /*<<< orphan*/  nlp_prev_state; } ;
struct lpfc_iocbq {int dummy; } ;
struct lpfc_hba {int dummy; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  NLP_STE_ADISC_ISSUE ; 
 int /*<<< orphan*/  NLP_STE_PLOGI_ISSUE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_hba*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*,struct lpfc_nodelist*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC8(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			   void *arg, uint32_t evt)
{
	struct Scsi_Host   *shost = FUNC5(vport);
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_iocbq *cmdiocb;

	/* software abort outstanding ADISC */
	FUNC0(phba, ndlp);

	cmdiocb = (struct lpfc_iocbq *) arg;

	if (FUNC4(vport, ndlp, cmdiocb)) {
		if (ndlp->nlp_flag & NLP_NPR_2B_DISC) {
			FUNC6(shost->host_lock);
			ndlp->nlp_flag &= ~NLP_NPR_2B_DISC;
			FUNC7(shost->host_lock);
			if (vport->num_disc_nodes)
				FUNC2(vport);
		}
		return ndlp->nlp_state;
	}
	ndlp->nlp_prev_state = NLP_STE_ADISC_ISSUE;
	FUNC1(vport, ndlp->nlp_DID, 0);
	FUNC3(vport, ndlp, NLP_STE_PLOGI_ISSUE);

	return ndlp->nlp_state;
}