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
struct nvmet_req {TYPE_1__* sq; } ;
struct nvmet_ctrl {int kato; int /*<<< orphan*/  ka_work; int /*<<< orphan*/  cntlid; } ;
struct TYPE_2__ {struct nvmet_ctrl* ctrl; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_req*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  system_wq ; 

void FUNC3(struct nvmet_req *req)
{
	struct nvmet_ctrl *ctrl = req->sq->ctrl;

	FUNC2("ctrl %d update keep-alive timer for %d secs\n",
		ctrl->cntlid, ctrl->kato);

	FUNC0(system_wq, &ctrl->ka_work, ctrl->kato * HZ);
	FUNC1(req, 0);
}