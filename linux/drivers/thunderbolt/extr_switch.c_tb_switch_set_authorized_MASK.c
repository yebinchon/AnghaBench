#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  kobj; } ;
struct tb_switch {int authorized; TYPE_2__* tb; TYPE_1__ dev; int /*<<< orphan*/  key; } ;
struct TYPE_6__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  KOBJ_CHANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 () ; 
 int FUNC4 (TYPE_2__*,struct tb_switch*) ; 
 int FUNC5 (TYPE_2__*,struct tb_switch*) ; 
 int FUNC6 (TYPE_2__*,struct tb_switch*) ; 

__attribute__((used)) static int FUNC7(struct tb_switch *sw, unsigned int val)
{
	int ret = -EINVAL;

	if (!FUNC1(&sw->tb->lock))
		return FUNC3();

	if (sw->authorized)
		goto unlock;

	switch (val) {
	/* Approve switch */
	case 1:
		if (sw->key)
			ret = FUNC5(sw->tb, sw);
		else
			ret = FUNC4(sw->tb, sw);
		break;

	/* Challenge switch */
	case 2:
		if (sw->key)
			ret = FUNC6(sw->tb, sw);
		break;

	default:
		break;
	}

	if (!ret) {
		sw->authorized = val;
		/* Notify status change to the userspace */
		FUNC0(&sw->dev.kobj, KOBJ_CHANGE);
	}

unlock:
	FUNC2(&sw->tb->lock);
	return ret;
}