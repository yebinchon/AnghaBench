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
struct request {int timeout; int /*<<< orphan*/  q; struct nvme_ctrl* end_io_data; } ;
struct nvme_ctrl {int kato; int /*<<< orphan*/  ka_cmd; int /*<<< orphan*/  admin_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_MQ_REQ_RESERVED ; 
 int HZ ; 
 scalar_t__ FUNC0 (struct request*) ; 
 int /*<<< orphan*/  NVME_QID_ANY ; 
 int FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct request*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct request* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvme_keep_alive_end_io ; 

__attribute__((used)) static int FUNC4(struct nvme_ctrl *ctrl)
{
	struct request *rq;

	rq = FUNC3(ctrl->admin_q, &ctrl->ka_cmd, BLK_MQ_REQ_RESERVED,
			NVME_QID_ANY);
	if (FUNC0(rq))
		return FUNC1(rq);

	rq->timeout = ctrl->kato * HZ;
	rq->end_io_data = ctrl;

	FUNC2(rq->q, NULL, rq, 0, nvme_keep_alive_end_io);

	return 0;
}