#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request {int /*<<< orphan*/  q; } ;
struct TYPE_5__ {int /*<<< orphan*/  sgl; } ;
struct nvmefc_fcp_req {scalar_t__ sg_cnt; TYPE_2__ sg_table; int /*<<< orphan*/  first_sgl; } ;
struct nvme_fc_fcp_op {int /*<<< orphan*/  nents; struct nvmefc_fcp_req fcp_req; } ;
struct nvme_fc_ctrl {TYPE_1__* lport; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SG_CHUNK_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct request*) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(struct nvme_fc_ctrl *ctrl, struct request *rq,
		struct nvme_fc_fcp_op *op)
{
	struct nvmefc_fcp_req *freq = &op->fcp_req;
	int ret;

	freq->sg_cnt = 0;

	if (!FUNC2(rq))
		return 0;

	freq->sg_table.sgl = freq->first_sgl;
	ret = FUNC5(&freq->sg_table,
			FUNC2(rq), freq->sg_table.sgl,
			SG_CHUNK_SIZE);
	if (ret)
		return -ENOMEM;

	op->nents = FUNC1(rq->q, rq, freq->sg_table.sgl);
	FUNC0(op->nents > FUNC2(rq));
	freq->sg_cnt = FUNC3(ctrl->lport->dev, freq->sg_table.sgl,
				op->nents, FUNC4(rq));
	if (FUNC7(freq->sg_cnt <= 0)) {
		FUNC6(&freq->sg_table, SG_CHUNK_SIZE);
		freq->sg_cnt = 0;
		return -EFAULT;
	}

	/*
	 * TODO: blk_integrity_rq(rq)  for DIF
	 */
	return 0;
}