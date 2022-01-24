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
struct slim_device {int is_laddr_valid; int /*<<< orphan*/  laddr; struct slim_controller* ctrl; } ;
struct slim_controller {int /*<<< orphan*/  laddr_ida; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  SLIM_DEVICE_STATUS_DOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct slim_device*,int /*<<< orphan*/ ) ; 

void FUNC4(struct slim_device *sbdev)
{
	struct slim_controller *ctrl = sbdev->ctrl;

	if (!ctrl)
		return;

	/* invalidate logical addresses */
	FUNC1(&ctrl->lock);
	sbdev->is_laddr_valid = false;
	FUNC2(&ctrl->lock);

	FUNC0(&ctrl->laddr_ida, sbdev->laddr);
	FUNC3(sbdev, SLIM_DEVICE_STATUS_DOWN);
}