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
struct slim_controller {int /*<<< orphan*/  id; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ctrl_ida ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct slim_controller*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  slim_ctrl_remove_device ; 

int FUNC3(struct slim_controller *ctrl)
{
	/* Remove all clients */
	FUNC0(ctrl->dev, NULL, slim_ctrl_remove_device);
	/* Enter Clock Pause */
	FUNC2(ctrl, false, 0);
	FUNC1(&ctrl_ida, ctrl->id);

	return 0;
}