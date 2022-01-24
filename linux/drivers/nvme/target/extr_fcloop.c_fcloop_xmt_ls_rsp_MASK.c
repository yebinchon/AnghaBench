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
struct nvmet_fc_target_port {int dummy; } ;
struct nvmefc_tgt_ls_req {scalar_t__ rsplen; int /*<<< orphan*/  (* done ) (struct nvmefc_tgt_ls_req*) ;int /*<<< orphan*/  rspbuf; } ;
struct nvmefc_ls_req {scalar_t__ rsplen; int /*<<< orphan*/  rspaddr; } ;
struct fcloop_lsreq {int /*<<< orphan*/  work; struct nvmefc_ls_req* lsreq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nvmefc_tgt_ls_req*) ; 
 struct fcloop_lsreq* FUNC3 (struct nvmefc_tgt_ls_req*) ; 

__attribute__((used)) static int
FUNC4(struct nvmet_fc_target_port *tport,
			struct nvmefc_tgt_ls_req *tgt_lsreq)
{
	struct fcloop_lsreq *tls_req = FUNC3(tgt_lsreq);
	struct nvmefc_ls_req *lsreq = tls_req->lsreq;

	FUNC0(lsreq->rspaddr, tgt_lsreq->rspbuf,
		((lsreq->rsplen < tgt_lsreq->rsplen) ?
				lsreq->rsplen : tgt_lsreq->rsplen));
	tgt_lsreq->done(tgt_lsreq);

	FUNC1(&tls_req->work);

	return 0;
}