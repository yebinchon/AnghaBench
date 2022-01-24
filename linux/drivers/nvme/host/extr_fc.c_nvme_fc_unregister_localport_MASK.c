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
struct nvme_fc_lport {int /*<<< orphan*/  localport; TYPE_1__* ops; int /*<<< orphan*/  act_rport_cnt; } ;
struct nvme_fc_local_port {scalar_t__ port_state; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* localport_delete ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FC_OBJSTATE_DELETED ; 
 scalar_t__ FC_OBJSTATE_ONLINE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 struct nvme_fc_lport* FUNC1 (struct nvme_fc_local_port*) ; 
 int /*<<< orphan*/  nvme_fc_lock ; 
 int /*<<< orphan*/  FUNC2 (struct nvme_fc_lport*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int
FUNC6(struct nvme_fc_local_port *portptr)
{
	struct nvme_fc_lport *lport = FUNC1(portptr);
	unsigned long flags;

	if (!portptr)
		return -EINVAL;

	FUNC3(&nvme_fc_lock, flags);

	if (portptr->port_state != FC_OBJSTATE_ONLINE) {
		FUNC4(&nvme_fc_lock, flags);
		return -EINVAL;
	}
	portptr->port_state = FC_OBJSTATE_DELETED;

	FUNC4(&nvme_fc_lock, flags);

	if (FUNC0(&lport->act_rport_cnt) == 0)
		lport->ops->localport_delete(&lport->localport);

	FUNC2(lport);

	return 0;
}