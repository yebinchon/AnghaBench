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
struct nvmefc_fcp_req {struct fcloop_ini_fcpreq* private; } ;
struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_rport {TYPE_1__* targetport; } ;
struct fcloop_ini_fcpreq {int /*<<< orphan*/  inilock; struct fcloop_fcpreq* tfcp_req; struct nvmefc_fcp_req* fcpreq; } ;
struct fcloop_fcpreq {int /*<<< orphan*/  fcp_rcv_work; int /*<<< orphan*/  ref; int /*<<< orphan*/  tio_done_work; int /*<<< orphan*/  abort_rcv_work; int /*<<< orphan*/  reqlock; int /*<<< orphan*/  inistate; int /*<<< orphan*/  tport; struct nvmefc_fcp_req* fcpreq; } ;
struct TYPE_2__ {int /*<<< orphan*/  private; } ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  INI_IO_START ; 
 int /*<<< orphan*/  fcloop_fcp_abort_recv_work ; 
 int /*<<< orphan*/  fcloop_fcp_recv_work ; 
 int /*<<< orphan*/  fcloop_tgt_fcprqst_done_work ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct fcloop_fcpreq* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(struct nvme_fc_local_port *localport,
			struct nvme_fc_remote_port *remoteport,
			void *hw_queue_handle,
			struct nvmefc_fcp_req *fcpreq)
{
	struct fcloop_rport *rport = remoteport->private;
	struct fcloop_ini_fcpreq *inireq = fcpreq->private;
	struct fcloop_fcpreq *tfcp_req;

	if (!rport->targetport)
		return -ECONNREFUSED;

	tfcp_req = FUNC2(sizeof(*tfcp_req), GFP_ATOMIC);
	if (!tfcp_req)
		return -ENOMEM;

	inireq->fcpreq = fcpreq;
	inireq->tfcp_req = tfcp_req;
	FUNC4(&inireq->inilock);

	tfcp_req->fcpreq = fcpreq;
	tfcp_req->tport = rport->targetport->private;
	tfcp_req->inistate = INI_IO_START;
	FUNC4(&tfcp_req->reqlock);
	FUNC0(&tfcp_req->fcp_rcv_work, fcloop_fcp_recv_work);
	FUNC0(&tfcp_req->abort_rcv_work, fcloop_fcp_abort_recv_work);
	FUNC0(&tfcp_req->tio_done_work, fcloop_tgt_fcprqst_done_work);
	FUNC1(&tfcp_req->ref);

	FUNC3(&tfcp_req->fcp_rcv_work);

	return 0;
}