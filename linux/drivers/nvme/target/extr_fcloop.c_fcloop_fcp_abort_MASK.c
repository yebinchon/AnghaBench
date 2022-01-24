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
struct nvmefc_fcp_req {struct fcloop_ini_fcpreq* private; } ;
struct nvme_fc_remote_port {int dummy; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_ini_fcpreq {int /*<<< orphan*/  inilock; struct fcloop_fcpreq* tfcp_req; } ;
struct fcloop_fcpreq {int inistate; int /*<<< orphan*/  abort_rcv_work; int /*<<< orphan*/  reqlock; } ;

/* Variables and functions */
 int INI_IO_ABORTED ; 
#define  INI_IO_ACTIVE 130 
#define  INI_IO_COMPLETED 129 
#define  INI_IO_START 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct fcloop_fcpreq*) ; 
 int /*<<< orphan*/  FUNC2 (struct fcloop_fcpreq*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(struct nvme_fc_local_port *localport,
			struct nvme_fc_remote_port *remoteport,
			void *hw_queue_handle,
			struct nvmefc_fcp_req *fcpreq)
{
	struct fcloop_ini_fcpreq *inireq = fcpreq->private;
	struct fcloop_fcpreq *tfcp_req;
	bool abortio = true;

	FUNC4(&inireq->inilock);
	tfcp_req = inireq->tfcp_req;
	if (tfcp_req)
		FUNC1(tfcp_req);
	FUNC6(&inireq->inilock);

	if (!tfcp_req)
		/* abort has already been called */
		return;

	/* break initiator/target relationship for io */
	FUNC5(&tfcp_req->reqlock);
	switch (tfcp_req->inistate) {
	case INI_IO_START:
	case INI_IO_ACTIVE:
		tfcp_req->inistate = INI_IO_ABORTED;
		break;
	case INI_IO_COMPLETED:
		abortio = false;
		break;
	default:
		FUNC7(&tfcp_req->reqlock);
		FUNC0(1);
		return;
	}
	FUNC7(&tfcp_req->reqlock);

	if (abortio)
		/* leave the reference while the work item is scheduled */
		FUNC0(!FUNC3(&tfcp_req->abort_rcv_work));
	else  {
		/*
		 * as the io has already had the done callback made,
		 * nothing more to do. So release the reference taken above
		 */
		FUNC2(tfcp_req);
	}
}