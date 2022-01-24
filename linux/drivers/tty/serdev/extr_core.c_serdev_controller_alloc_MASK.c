#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; } ;
struct serdev_controller {int nr; TYPE_1__ dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ctrl_ida ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,struct serdev_controller*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct serdev_controller*) ; 
 struct serdev_controller* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  serdev_bus_type ; 
 int /*<<< orphan*/  FUNC10 (struct serdev_controller*,struct serdev_controller*) ; 
 int /*<<< orphan*/  serdev_ctrl_type ; 

struct serdev_controller *FUNC11(struct device *parent,
					      size_t size)
{
	struct serdev_controller *ctrl;
	int id;

	if (FUNC0(!parent))
		return NULL;

	ctrl = FUNC7(sizeof(*ctrl) + size, GFP_KERNEL);
	if (!ctrl)
		return NULL;

	id = FUNC5(&ctrl_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		FUNC2(parent,
			"unable to allocate serdev controller identifier.\n");
		goto err_free;
	}

	ctrl->nr = id;

	FUNC4(&ctrl->dev);
	ctrl->dev.type = &serdev_ctrl_type;
	ctrl->dev.bus = &serdev_bus_type;
	ctrl->dev.parent = parent;
	ctrl->dev.of_node = parent->of_node;
	FUNC10(ctrl, &ctrl[1]);

	FUNC3(&ctrl->dev, "serial%d", id);

	FUNC8(&ctrl->dev);
	FUNC9(&ctrl->dev, true);

	FUNC1(&ctrl->dev, "allocated controller 0x%p id %d\n", ctrl, id);
	return ctrl;

err_free:
	FUNC6(ctrl);

	return NULL;
}