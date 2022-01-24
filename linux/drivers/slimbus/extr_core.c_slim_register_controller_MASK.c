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
struct TYPE_2__ {int /*<<< orphan*/  pause_comp; int /*<<< orphan*/  m_reconf; } ;
struct slim_controller {int id; int /*<<< orphan*/  dev; int /*<<< orphan*/  name; int /*<<< orphan*/  txn_lock; TYPE_1__ sched; int /*<<< orphan*/  lock; int /*<<< orphan*/  tid_idr; int /*<<< orphan*/  laddr_ida; scalar_t__ max_cg; scalar_t__ min_cg; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ SLIM_MAX_CLK_GEAR ; 
 scalar_t__ SLIM_MIN_CLK_GEAR ; 
 int /*<<< orphan*/  ctrl_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slim_controller*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct slim_controller *ctrl)
{
	int id;

	id = FUNC2(&ctrl_ida, 0, 0, GFP_KERNEL);
	if (id < 0)
		return id;

	ctrl->id = id;

	if (!ctrl->min_cg)
		ctrl->min_cg = SLIM_MIN_CLK_GEAR;
	if (!ctrl->max_cg)
		ctrl->max_cg = SLIM_MAX_CLK_GEAR;

	FUNC1(&ctrl->laddr_ida);
	FUNC3(&ctrl->tid_idr);
	FUNC5(&ctrl->lock);
	FUNC5(&ctrl->sched.m_reconf);
	FUNC4(&ctrl->sched.pause_comp);
	FUNC7(&ctrl->txn_lock);

	FUNC0(ctrl->dev, "Bus [%s] registered:dev:%p\n",
		ctrl->name, ctrl->dev);

	FUNC6(ctrl);

	return 0;
}