#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nvme_fc_remote_port {struct lpfc_nvme_rport* private; } ;
struct lpfc_vport {TYPE_1__* phba; } ;
struct lpfc_nvme_rport {struct lpfc_nodelist* ndlp; } ;
struct lpfc_nodelist {int upcall_flags; int /*<<< orphan*/ * nrport; struct lpfc_vport* vport; } ;
struct TYPE_2__ {int /*<<< orphan*/  hbalock; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INFO ; 
 int /*<<< orphan*/  LOG_NVME_DISC ; 
 int NLP_WAIT_FOR_UNREG ; 
 int /*<<< orphan*/  FUNC0 (struct lpfc_nodelist*) ; 
 int /*<<< orphan*/  FUNC1 (struct lpfc_vport*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct nvme_fc_remote_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct nvme_fc_remote_port *remoteport)
{
	struct lpfc_nvme_rport *rport = remoteport->private;
	struct lpfc_vport *vport;
	struct lpfc_nodelist *ndlp;

	ndlp = rport->ndlp;
	if (!ndlp)
		goto rport_err;

	vport = ndlp->vport;
	if (!vport)
		goto rport_err;

	/* Remove this rport from the lport's list - memory is owned by the
	 * transport. Remove the ndlp reference for the NVME transport before
	 * calling state machine to remove the node.
	 */
	FUNC1(vport, KERN_INFO, LOG_NVME_DISC,
			"6146 remoteport delete of remoteport x%px\n",
			remoteport);
	FUNC2(&vport->phba->hbalock);

	/* The register rebind might have occurred before the delete
	 * downcall.  Guard against this race.
	 */
	if (ndlp->upcall_flags & NLP_WAIT_FOR_UNREG) {
		ndlp->nrport = NULL;
		ndlp->upcall_flags &= ~NLP_WAIT_FOR_UNREG;
	}
	FUNC3(&vport->phba->hbalock);

	/* Remove original register reference. The host transport
	 * won't reference this rport/remoteport any further.
	 */
	FUNC0(ndlp);

 rport_err:
	return;
}