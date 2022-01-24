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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct rio_switch_ops {int (* add_entry ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  owner; } ;
struct rio_dev {int /*<<< orphan*/  hopcount; int /*<<< orphan*/  destid; TYPE_2__* net; TYPE_1__* rswitch; } ;
struct TYPE_4__ {int /*<<< orphan*/  hport; } ;
struct TYPE_3__ {int /*<<< orphan*/  lock; struct rio_switch_ops* ops; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(struct rio_dev *rdev,
			u16 table, u16 route_destid, u8 route_port, int lock)
{
	int rc = -EINVAL;
	struct rio_switch_ops *ops = rdev->rswitch->ops;

	if (lock) {
		rc = FUNC1(rdev->net->hport, rdev->destid,
				     rdev->hopcount, 1000);
		if (rc)
			return rc;
	}

	FUNC4(&rdev->rswitch->lock);

	if (!ops || !ops->add_entry) {
		rc = FUNC2(rdev->net->hport, rdev->destid,
					     rdev->hopcount, table,
					     route_destid, route_port);
	} else if (FUNC7(ops->owner)) {
		rc = ops->add_entry(rdev->net->hport, rdev->destid,
				    rdev->hopcount, table, route_destid,
				    route_port);
		FUNC0(ops->owner);
	}

	FUNC5(&rdev->rswitch->lock);

	if (lock)
		FUNC3(rdev->net->hport, rdev->destid,
				  rdev->hopcount);

	return rc;
}