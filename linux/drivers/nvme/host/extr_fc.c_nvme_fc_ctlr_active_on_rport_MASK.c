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
typedef  int u32 ;
struct nvme_fc_rport {int /*<<< orphan*/  act_ctrl_cnt; } ;
struct nvme_fc_ctrl {int assoc_active; struct nvme_fc_rport* rport; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_fc_rport*) ; 

__attribute__((used)) static int
FUNC2(struct nvme_fc_ctrl *ctrl)
{
	struct nvme_fc_rport *rport = ctrl->rport;
	u32 cnt;

	if (ctrl->assoc_active)
		return 1;

	ctrl->assoc_active = true;
	cnt = FUNC0(&rport->act_ctrl_cnt);
	if (cnt == 1)
		FUNC1(rport);

	return 0;
}