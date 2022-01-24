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
struct request {int dummy; } ;
struct nvme_fc_fcp_op {int /*<<< orphan*/  state; struct nvme_fc_ctrl* ctrl; } ;
struct nvme_fc_ctrl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FCPOP_STATE_IDLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nvme_fc_fcp_op* FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int /*<<< orphan*/  FUNC3 (struct nvme_fc_ctrl*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_fc_ctrl*,struct request*,struct nvme_fc_fcp_op*) ; 

__attribute__((used)) static void
FUNC5(struct request *rq)
{
	struct nvme_fc_fcp_op *op = FUNC1(rq);
	struct nvme_fc_ctrl *ctrl = op->ctrl;

	FUNC0(&op->state, FCPOP_STATE_IDLE);

	FUNC4(ctrl, rq, op);
	FUNC2(rq);
	FUNC3(ctrl);
}