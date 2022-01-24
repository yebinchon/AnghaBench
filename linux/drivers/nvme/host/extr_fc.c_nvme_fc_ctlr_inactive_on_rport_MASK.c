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
typedef  scalar_t__ u32 ;
struct TYPE_4__ {scalar_t__ port_state; } ;
struct nvme_fc_rport {TYPE_2__ remoteport; int /*<<< orphan*/  act_ctrl_cnt; struct nvme_fc_lport* lport; } ;
struct nvme_fc_lport {TYPE_1__* ops; } ;
struct nvme_fc_ctrl {struct nvme_fc_rport* rport; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* remoteport_delete ) (TYPE_2__*) ;} ;

/* Variables and functions */
 scalar_t__ FC_OBJSTATE_DELETED ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvme_fc_rport*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static int
FUNC3(struct nvme_fc_ctrl *ctrl)
{
	struct nvme_fc_rport *rport = ctrl->rport;
	struct nvme_fc_lport *lport = rport->lport;
	u32 cnt;

	/* ctrl->assoc_active=false will be set independently */

	cnt = FUNC0(&rport->act_ctrl_cnt);
	if (cnt == 0) {
		if (rport->remoteport.port_state == FC_OBJSTATE_DELETED)
			lport->ops->remoteport_delete(&rport->remoteport);
		FUNC1(rport);
	}

	return 0;
}