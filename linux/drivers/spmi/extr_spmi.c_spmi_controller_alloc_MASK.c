#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  of_node; struct device* parent; int /*<<< orphan*/ * bus; int /*<<< orphan*/ * type; } ;
struct spmi_controller {int nr; TYPE_1__ dev; } ;
struct device {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  ctrl_ida ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,struct spmi_controller*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct spmi_controller* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spmi_bus_type ; 
 int /*<<< orphan*/  FUNC7 (struct spmi_controller*) ; 
 int /*<<< orphan*/  FUNC8 (struct spmi_controller*,struct spmi_controller*) ; 
 int /*<<< orphan*/  spmi_ctrl_type ; 

struct spmi_controller *FUNC9(struct device *parent,
					      size_t size)
{
	struct spmi_controller *ctrl;
	int id;

	if (FUNC0(!parent))
		return NULL;

	ctrl = FUNC6(sizeof(*ctrl) + size, GFP_KERNEL);
	if (!ctrl)
		return NULL;

	FUNC4(&ctrl->dev);
	ctrl->dev.type = &spmi_ctrl_type;
	ctrl->dev.bus = &spmi_bus_type;
	ctrl->dev.parent = parent;
	ctrl->dev.of_node = parent->of_node;
	FUNC8(ctrl, &ctrl[1]);

	id = FUNC5(&ctrl_ida, 0, 0, GFP_KERNEL);
	if (id < 0) {
		FUNC2(parent,
			"unable to allocate SPMI controller identifier.\n");
		FUNC7(ctrl);
		return NULL;
	}

	ctrl->nr = id;
	FUNC3(&ctrl->dev, "spmi-%d", id);

	FUNC1(&ctrl->dev, "allocated controller 0x%p id %d\n", ctrl, id);
	return ctrl;
}