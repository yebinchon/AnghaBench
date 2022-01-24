#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scsi_qla_host {TYPE_2__* hw; } ;
struct rsp_que {int dummy; } ;
struct qla_tgt_sess_op {int /*<<< orphan*/  work; struct rsp_que* rsp; int /*<<< orphan*/  chip_reset; struct scsi_qla_host* vha; int /*<<< orphan*/  atio; } ;
typedef  int /*<<< orphan*/  response_t ;
struct TYPE_4__ {TYPE_1__* base_qpair; } ;
struct TYPE_3__ {int /*<<< orphan*/  chip_reset; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct qla_tgt_sess_op* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  qla_tgt_wq ; 
 int /*<<< orphan*/  qlt_handle_abts_recv_work ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_qla_host*,struct rsp_que*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void
FUNC5(struct scsi_qla_host *vha, struct rsp_que *rsp,
    response_t *pkt)
{
	struct qla_tgt_sess_op *op;

	op = FUNC1(sizeof(*op), GFP_ATOMIC);

	if (!op) {
		/* do not reach for ATIO queue here.  This is best effort err
		 * recovery at this point.
		 */
		FUNC3(vha, rsp, pkt);
		return;
	}

	FUNC2(&op->atio, pkt, sizeof(*pkt));
	op->vha = vha;
	op->chip_reset = vha->hw->base_qpair->chip_reset;
	op->rsp = rsp;
	FUNC0(&op->work, qlt_handle_abts_recv_work);
	FUNC4(qla_tgt_wq, &op->work);
	return;
}