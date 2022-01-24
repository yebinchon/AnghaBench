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
struct lpfc_vport {int fc_flag; scalar_t__ cfg_use_adisc; } ;
struct lpfc_nodelist {int nlp_flag; int nlp_fcp_info; int nlp_type; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int FC_PT2PT ; 
 int FC_RSCN_MODE ; 
 int NLP_FCP_2_DEVICE ; 
 int NLP_FCP_TARGET ; 
 int NLP_NPR_ADISC ; 
 int NLP_RPI_REGISTERED ; 
 struct Scsi_Host* FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC4(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp)
{
	struct Scsi_Host *shost = FUNC0(vport);

	if (!(ndlp->nlp_flag & NLP_RPI_REGISTERED)) {
		FUNC2(shost->host_lock);
		ndlp->nlp_flag &= ~NLP_NPR_ADISC;
		FUNC3(shost->host_lock);
		return 0;
	}

	if (!(vport->fc_flag & FC_PT2PT)) {
		/* Check config parameter use-adisc or FCP-2 */
		if (vport->cfg_use_adisc && ((vport->fc_flag & FC_RSCN_MODE) ||
		    ((ndlp->nlp_fcp_info & NLP_FCP_2_DEVICE) &&
		     (ndlp->nlp_type & NLP_FCP_TARGET)))) {
			FUNC2(shost->host_lock);
			ndlp->nlp_flag |= NLP_NPR_ADISC;
			FUNC3(shost->host_lock);
			return 1;
		}
	}

	FUNC2(shost->host_lock);
	ndlp->nlp_flag &= ~NLP_NPR_ADISC;
	FUNC3(shost->host_lock);
	FUNC1(vport, ndlp);
	return 0;
}