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
struct lpfc_work_evt {scalar_t__ evt_arg1; int /*<<< orphan*/  evt_listp; } ;
struct lpfc_vport {scalar_t__ num_disc_nodes; scalar_t__ port_state; int /*<<< orphan*/  fc_flag; } ;
struct lpfc_nodelist {int nlp_flag; struct lpfc_work_evt els_retry_evt; scalar_t__ nlp_last_elscmd; int /*<<< orphan*/  nlp_delayfunc; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NDISC_ACTIVE ; 
 scalar_t__ LPFC_VPORT_READY ; 
 int NLP_DELAY_TMO ; 
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC4 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC5 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC6 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC7 (struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC8 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void
FUNC11(struct lpfc_vport *vport, struct lpfc_nodelist *nlp)
{
	struct Scsi_Host *shost = FUNC8(vport);
	struct lpfc_work_evt *evtp;

	if (!(nlp->nlp_flag & NLP_DELAY_TMO))
		return;
	FUNC9(shost->host_lock);
	nlp->nlp_flag &= ~NLP_DELAY_TMO;
	FUNC10(shost->host_lock);
	FUNC0(&nlp->nlp_delayfunc);
	nlp->nlp_last_elscmd = 0;
	if (!FUNC2(&nlp->els_retry_evt.evt_listp)) {
		FUNC1(&nlp->els_retry_evt.evt_listp);
		/* Decrement nlp reference count held for the delayed retry */
		evtp = &nlp->els_retry_evt;
		FUNC7((struct lpfc_nodelist *)evtp->evt_arg1);
	}
	if (nlp->nlp_flag & NLP_NPR_2B_DISC) {
		FUNC9(shost->host_lock);
		nlp->nlp_flag &= ~NLP_NPR_2B_DISC;
		FUNC10(shost->host_lock);
		if (vport->num_disc_nodes) {
			if (vport->port_state < LPFC_VPORT_READY) {
				/* Check if there are more ADISCs to be sent */
				FUNC5(vport);
			} else {
				/* Check if there are more PLOGIs to be sent */
				FUNC6(vport);
				if (vport->num_disc_nodes == 0) {
					FUNC9(shost->host_lock);
					vport->fc_flag &= ~FC_NDISC_ACTIVE;
					FUNC10(shost->host_lock);
					FUNC3(vport);
					FUNC4(vport);
				}
			}
		}
	}
	return;
}