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
struct spmi_device {int /*<<< orphan*/  dev; int /*<<< orphan*/  usid; struct spmi_controller* ctrl; } ;
struct spmi_controller {int /*<<< orphan*/  nr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct spmi_device *sdev)
{
	struct spmi_controller *ctrl = sdev->ctrl;
	int err;

	FUNC3(&sdev->dev, "%d-%02x", ctrl->nr, sdev->usid);

	err = FUNC4(&sdev->dev);
	if (err < 0) {
		FUNC1(&sdev->dev, "Can't add %s, status %d\n",
			FUNC2(&sdev->dev), err);
		goto err_device_add;
	}

	FUNC0(&sdev->dev, "device %s registered\n", FUNC2(&sdev->dev));

err_device_add:
	return err;
}