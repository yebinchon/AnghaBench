#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct qedf_ioreq {int /*<<< orphan*/  abts_done; TYPE_2__* fcport; int /*<<< orphan*/  xid; } ;
struct qedf_ctx {int /*<<< orphan*/  dbg_ctx; scalar_t__ stop_io_on_error; } ;
struct TYPE_7__ {int /*<<< orphan*/  rx_id; int /*<<< orphan*/  rx_buf_off; int /*<<< orphan*/  tx_buf_off; int /*<<< orphan*/  err_warn_bitmap_lo; int /*<<< orphan*/  err_warn_bitmap_hi; } ;
struct TYPE_8__ {TYPE_3__ err_info; } ;
struct fcoe_cqe {TYPE_4__ cqe_info; } ;
struct TYPE_6__ {TYPE_1__* qedf; } ;
struct TYPE_5__ {int /*<<< orphan*/  dbg_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct qedf_ioreq*) ; 
 int /*<<< orphan*/  QEDF_LOG_IO ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct qedf_ioreq*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct qedf_ctx*) ; 

void FUNC6(struct qedf_ctx *qedf, struct fcoe_cqe *cqe,
	struct qedf_ioreq *io_req)
{
	int rval;

	if (!cqe) {
		FUNC1(&qedf->dbg_ctx, QEDF_LOG_IO,
			  "cqe is NULL for io_req %p\n", io_req);
		return;
	}

	FUNC0(&(io_req->fcport->qedf->dbg_ctx), "Error detection CQE, "
		  "xid=0x%x\n", io_req->xid);
	FUNC0(&(io_req->fcport->qedf->dbg_ctx),
		  "err_warn_bitmap=%08x:%08x\n",
		  FUNC3(cqe->cqe_info.err_info.err_warn_bitmap_hi),
		  FUNC3(cqe->cqe_info.err_info.err_warn_bitmap_lo));
	FUNC0(&(io_req->fcport->qedf->dbg_ctx), "tx_buff_off=%08x, "
		  "rx_buff_off=%08x, rx_id=%04x\n",
		  FUNC3(cqe->cqe_info.err_info.tx_buf_off),
		  FUNC3(cqe->cqe_info.err_info.rx_buf_off),
		  FUNC3(cqe->cqe_info.err_info.rx_id));

	if (qedf->stop_io_on_error) {
		FUNC5(qedf);
		return;
	}

	FUNC2(&io_req->abts_done);
	rval = FUNC4(io_req, true);
	if (rval)
		FUNC0(&(qedf->dbg_ctx), "Failed to queue ABTS.\n");
}