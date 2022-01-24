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
struct pcie_device {scalar_t__ service; TYPE_1__* port; } ;
struct controller {int /*<<< orphan*/  hotplug_slot; } ;
struct TYPE_2__ {int /*<<< orphan*/  subordinate; } ;

/* Variables and functions */
 int EBUSY ; 
 int ENODEV ; 
 scalar_t__ PCIE_PORT_SERVICE_HP ; 
 int /*<<< orphan*/  FUNC0 (struct controller*) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*) ; 
 int FUNC3 (struct controller*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 struct controller* FUNC6 (struct pcie_device*) ; 
 int FUNC7 (struct controller*) ; 
 int /*<<< orphan*/  FUNC8 (struct controller*) ; 
 int /*<<< orphan*/  FUNC9 (struct controller*) ; 
 int /*<<< orphan*/  FUNC10 (struct controller*) ; 
 int /*<<< orphan*/  FUNC11 (struct pcie_device*,struct controller*) ; 

__attribute__((used)) static int FUNC12(struct pcie_device *dev)
{
	int rc;
	struct controller *ctrl;

	/* If this is not a "hotplug" service, we have no business here. */
	if (dev->service != PCIE_PORT_SERVICE_HP)
		return -ENODEV;

	if (!dev->port->subordinate) {
		/* Can happen if we run out of bus numbers during probe */
		FUNC4(dev->port,
			"Hotplug bridge without secondary bus, ignoring\n");
		return -ENODEV;
	}

	ctrl = FUNC6(dev);
	if (!ctrl) {
		FUNC4(dev->port, "Controller initialization failed\n");
		return -ENODEV;
	}
	FUNC11(dev, ctrl);

	/* Setup the slot information structures */
	rc = FUNC3(ctrl);
	if (rc) {
		if (rc == -EBUSY)
			FUNC2(ctrl, "Slot already registered by another hotplug driver\n");
		else
			FUNC1(ctrl, "Slot initialization failed (%d)\n", rc);
		goto err_out_release_ctlr;
	}

	/* Enable events after we have setup the data structures */
	rc = FUNC7(ctrl);
	if (rc) {
		FUNC1(ctrl, "Notification initialization failed (%d)\n", rc);
		goto err_out_free_ctrl_slot;
	}

	/* Publish to user space */
	rc = FUNC5(&ctrl->hotplug_slot);
	if (rc) {
		FUNC1(ctrl, "Publication to user space failed (%d)\n", rc);
		goto err_out_shutdown_notification;
	}

	FUNC9(ctrl);

	return 0;

err_out_shutdown_notification:
	FUNC8(ctrl);
err_out_free_ctrl_slot:
	FUNC0(ctrl);
err_out_release_ctlr:
	FUNC10(ctrl);
	return -ENODEV;
}