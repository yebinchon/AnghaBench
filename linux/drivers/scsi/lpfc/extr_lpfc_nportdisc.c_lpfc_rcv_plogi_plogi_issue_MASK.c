#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct serv_parm {int /*<<< orphan*/  portName; } ;
struct TYPE_5__ {int /*<<< orphan*/  lsRjtRsnCodeExp; int /*<<< orphan*/  lsRjtRsnCode; } ;
struct TYPE_6__ {int /*<<< orphan*/  lsRjtError; TYPE_2__ b; } ;
struct ls_rjt {TYPE_3__ un; } ;
struct lpfc_vport {scalar_t__ num_disc_nodes; int /*<<< orphan*/  fc_flag; int /*<<< orphan*/  fc_portname; struct lpfc_hba* phba; } ;
struct lpfc_nodelist {int nlp_flag; int /*<<< orphan*/  nlp_state; } ;
struct lpfc_name {int dummy; } ;
struct lpfc_iocbq {scalar_t__ context2; } ;
struct TYPE_4__ {int /*<<< orphan*/  elsLogiCol; } ;
struct lpfc_hba {TYPE_1__ fc_stat; } ;
struct lpfc_dmabuf {scalar_t__ virt; } ;
struct Scsi_Host {int /*<<< orphan*/  host_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FC_NDISC_ACTIVE ; 
 int /*<<< orphan*/  LSEXP_CMD_IN_PROGRESS ; 
 int /*<<< orphan*/  LSRJT_UNABLE_TPC ; 
 int NLP_NPR_2B_DISC ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,struct lpfc_iocbq*,struct lpfc_nodelist*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct lpfc_vport*) ; 
 int /*<<< orphan*/  FUNC3 (struct lpfc_vport*) ; 
 scalar_t__ FUNC4 (struct lpfc_vport*,struct lpfc_nodelist*,struct lpfc_iocbq*) ; 
 struct Scsi_Host* FUNC5 (struct lpfc_vport*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ls_rjt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static uint32_t
FUNC10(struct lpfc_vport *vport, struct lpfc_nodelist *ndlp,
			   void *arg, uint32_t evt)
{
	struct Scsi_Host   *shost = FUNC5(vport);
	struct lpfc_hba   *phba = vport->phba;
	struct lpfc_iocbq *cmdiocb = arg;
	struct lpfc_dmabuf *pcmd = (struct lpfc_dmabuf *) cmdiocb->context2;
	uint32_t *lp = (uint32_t *) pcmd->virt;
	struct serv_parm *sp = (struct serv_parm *) (lp + 1);
	struct ls_rjt stat;
	int port_cmp;

	FUNC7(&stat, 0, sizeof (struct ls_rjt));

	/* For a PLOGI, we only accept if our portname is less
	 * than the remote portname.
	 */
	phba->fc_stat.elsLogiCol++;
	port_cmp = FUNC6(&vport->fc_portname, &sp->portName,
			  sizeof(struct lpfc_name));

	if (port_cmp >= 0) {
		/* Reject this request because the remote node will accept
		   ours */
		stat.un.b.lsRjtRsnCode = LSRJT_UNABLE_TPC;
		stat.un.b.lsRjtRsnCodeExp = LSEXP_CMD_IN_PROGRESS;
		FUNC1(vport, stat.un.lsRjtError, cmdiocb, ndlp,
			NULL);
	} else {
		if (FUNC4(vport, ndlp, cmdiocb) &&
		    (ndlp->nlp_flag & NLP_NPR_2B_DISC) &&
		    (vport->num_disc_nodes)) {
			FUNC8(shost->host_lock);
			ndlp->nlp_flag &= ~NLP_NPR_2B_DISC;
			FUNC9(shost->host_lock);
			/* Check if there are more PLOGIs to be sent */
			FUNC3(vport);
			if (vport->num_disc_nodes == 0) {
				FUNC8(shost->host_lock);
				vport->fc_flag &= ~FC_NDISC_ACTIVE;
				FUNC9(shost->host_lock);
				FUNC0(vport);
				FUNC2(vport);
			}
		}
	} /* If our portname was less */

	return ndlp->nlp_state;
}