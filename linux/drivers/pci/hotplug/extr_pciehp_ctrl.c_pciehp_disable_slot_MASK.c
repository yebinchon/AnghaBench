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
struct controller {int /*<<< orphan*/  state_lock; int /*<<< orphan*/  state; TYPE_2__* pcie; } ;
struct TYPE_4__ {TYPE_1__* port; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  OFF_STATE ; 
 int FUNC0 (struct controller*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct controller *ctrl, bool safe_removal)
{
	int ret;

	FUNC3(&ctrl->pcie->port->dev);
	ret = FUNC0(ctrl, safe_removal);
	FUNC4(&ctrl->pcie->port->dev);

	FUNC1(&ctrl->state_lock);
	ctrl->state = OFF_STATE;
	FUNC2(&ctrl->state_lock);

	return ret;
}