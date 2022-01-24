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
struct lpfc_vport {int /*<<< orphan*/  phba; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int NLP_NODEV_REMOVE ; 
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  NLP_STE_FREED_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC5(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			   void *arg, uint32_t evt)
{
	struct Scsi_Host *shost = FUNC2(vport);

	if (ndlp->nlp_flag & NLP_NPR_2B_DISC) {
		FUNC3(shost->host_lock);
		ndlp->nlp_flag |= NLP_NODEV_REMOVE;
		FUNC4(shost->host_lock);
		return ndlp->nlp_state;
	} else {
		/* software abort outstanding ADISC */
		FUNC1(vport->phba, ndlp);

		FUNC0(vport, ndlp);
		return NLP_STE_FREED_NODE;
	}
}