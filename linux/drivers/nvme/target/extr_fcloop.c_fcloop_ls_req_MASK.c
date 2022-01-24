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
struct nvmefc_ls_req {int /*<<< orphan*/  rqstlen; int /*<<< orphan*/  rqstaddr; struct fcloop_lsreq* private; } ;
struct nvme_fc_remote_port {struct fcloop_rport* private; } ;
struct nvme_fc_local_port {int dummy; } ;
struct fcloop_rport {TYPE_1__* targetport; } ;
struct fcloop_lsreq {int /*<<< orphan*/  tgt_ls_req; int /*<<< orphan*/ * tport; int /*<<< orphan*/  status; int /*<<< orphan*/  work; struct nvmefc_ls_req* lsreq; } ;
struct TYPE_2__ {int /*<<< orphan*/ * private; } ;

/* Variables and functions */
 int /*<<< orphan*/  ECONNREFUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  fcloop_tgt_lsrqst_done_work ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(struct nvme_fc_local_port *localport,
			struct nvme_fc_remote_port *remoteport,
			struct nvmefc_ls_req *lsreq)
{
	struct fcloop_lsreq *tls_req = lsreq->private;
	struct fcloop_rport *rport = remoteport->private;
	int ret = 0;

	tls_req->lsreq = lsreq;
	FUNC0(&tls_req->work, fcloop_tgt_lsrqst_done_work);

	if (!rport->targetport) {
		tls_req->status = -ECONNREFUSED;
		tls_req->tport = NULL;
		FUNC2(&tls_req->work);
		return ret;
	}

	tls_req->status = 0;
	tls_req->tport = rport->targetport->private;
	ret = FUNC1(rport->targetport, &tls_req->tgt_ls_req,
				 lsreq->rqstaddr, lsreq->rqstlen);

	return ret;
}