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
struct lpfc_vport {int fc_flag; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_fc4_type; int /*<<< orphan*/  nlp_state; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_RSCN_DEFERRED ; 
 int NLP_FC4_FCP ; 
 int NLP_FC4_NVME ; 
 int NLP_NODEV_REMOVE ; 
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 struct Scsi_Host* FUNC1 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			   void *arg, uint32_t evt)
{
	struct Scsi_Host *shost = FUNC1(vport);

	/* Don't do anything that will mess up processing of the
	 * previous RSCN.
	 */
	if (vport->fc_flag & FC_RSCN_DEFERRED)
		return ndlp->nlp_state;

	FUNC0(vport, ndlp);
	FUNC2(shost->host_lock);
	ndlp->nlp_flag &= ~(NLP_NODEV_REMOVE | NLP_NPR_2B_DISC);
	ndlp->nlp_fc4_type &= ~(NLP_FC4_FCP | NLP_FC4_NVME);
	FUNC3(shost->host_lock);
	return ndlp->nlp_state;
}