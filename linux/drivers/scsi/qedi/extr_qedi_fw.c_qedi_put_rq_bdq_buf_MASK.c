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
typedef  int u16 ;
struct TYPE_7__ {void* opaque; scalar_t__* reserved_zero; } ;
struct TYPE_8__ {TYPE_3__ iscsi_opaque; } ;
struct TYPE_6__ {void* lo; void* hi; } ;
struct scsi_bd {TYPE_4__ opaque; TYPE_2__ address; } ;
struct qedi_ctx {int bdq_prod_idx; int rq_num_entries; int /*<<< orphan*/  bdq_secondary_prod; int /*<<< orphan*/  bdq_primary_prod; int /*<<< orphan*/  dbg_ctx; TYPE_1__* bdq; scalar_t__ bdq_pbl; } ;
struct iscsi_cqe_unsolicited {int rqe_opaque; } ;
struct TYPE_5__ {int /*<<< orphan*/  buf_dma; } ;

/* Variables and functions */
 int QEDI_BDQ_NUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  QEDI_LOG_CONN ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct qedi_ctx *qedi,
				struct iscsi_cqe_unsolicited *cqe,
				int count)
{
	u16 tmp;
	u16 idx = 0;
	struct scsi_bd *pbl;

	/* Obtain buffer address from rqe_opaque */
	idx = cqe->rqe_opaque;
	if (idx > (QEDI_BDQ_NUM - 1)) {
		FUNC0(&qedi->dbg_ctx, QEDI_LOG_CONN,
			  "wrong idx %d returned by FW, dropping the unsolicited pkt\n",
			  idx);
		return;
	}

	pbl = (struct scsi_bd *)qedi->bdq_pbl;
	pbl += (qedi->bdq_prod_idx % qedi->rq_num_entries);
	pbl->address.hi = FUNC3(FUNC1(qedi->bdq[idx].buf_dma));
	pbl->address.lo = FUNC3(FUNC2(qedi->bdq[idx].buf_dma));
	FUNC0(&qedi->dbg_ctx, QEDI_LOG_CONN,
		  "pbl [0x%p] pbl->address hi [0x%llx] lo [0x%llx] idx [%d]\n",
		  pbl, pbl->address.hi, pbl->address.lo, idx);
	pbl->opaque.iscsi_opaque.reserved_zero[0] = 0;
	pbl->opaque.iscsi_opaque.reserved_zero[1] = 0;
	pbl->opaque.iscsi_opaque.reserved_zero[2] = 0;
	pbl->opaque.iscsi_opaque.opaque = FUNC3(idx);

	/* Increment producer to let f/w know we've handled the frame */
	qedi->bdq_prod_idx += count;

	FUNC5(qedi->bdq_prod_idx, qedi->bdq_primary_prod);
	tmp = FUNC4(qedi->bdq_primary_prod);

	FUNC5(qedi->bdq_prod_idx, qedi->bdq_secondary_prod);
	tmp = FUNC4(qedi->bdq_secondary_prod);
}