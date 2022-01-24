#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/ * driver; int /*<<< orphan*/ * type; int /*<<< orphan*/  groups; int /*<<< orphan*/  parent; } ;
struct usb_port {int portnum; int usb3_lpm_u1_permit; int usb3_lpm_u2_permit; int is_superspeed; struct usb_port* req; TYPE_1__ dev; int /*<<< orphan*/  status_lock; } ;
struct usb_hub {struct usb_device* hdev; int /*<<< orphan*/  intfdev; int /*<<< orphan*/  power_bits; struct usb_port** ports; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEV_PM_QOS_FLAGS ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PM_QOS_FLAG_NO_POWER_OFF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,struct usb_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct usb_port*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hub*) ; 
 scalar_t__ FUNC11 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_port*) ; 
 void* FUNC13 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*) ; 
 int /*<<< orphan*/  port_dev_group ; 
 int /*<<< orphan*/  port_dev_usb3_group ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  usb_port_device_type ; 
 int /*<<< orphan*/  usb_port_driver ; 

int FUNC20(struct usb_hub *hub, int port1)
{
	struct usb_port *port_dev;
	struct usb_device *hdev = hub->hdev;
	int retval;

	port_dev = FUNC13(sizeof(*port_dev), GFP_KERNEL);
	if (!port_dev)
		return -ENOMEM;

	port_dev->req = FUNC13(sizeof(*(port_dev->req)), GFP_KERNEL);
	if (!port_dev->req) {
		FUNC12(port_dev);
		return -ENOMEM;
	}

	hub->ports[port1 - 1] = port_dev;
	port_dev->portnum = port1;
	FUNC19(port1, hub->power_bits);
	port_dev->dev.parent = hub->intfdev;
	if (FUNC11(hdev)) {
		port_dev->usb3_lpm_u1_permit = 1;
		port_dev->usb3_lpm_u2_permit = 1;
		port_dev->dev.groups = port_dev_usb3_group;
	} else
		port_dev->dev.groups = port_dev_group;
	port_dev->dev.type = &usb_port_device_type;
	port_dev->dev.driver = &usb_port_driver;
	if (FUNC11(hub->hdev))
		port_dev->is_superspeed = 1;
	FUNC4(&port_dev->dev, "%s-port%d", FUNC0(&hub->hdev->dev),
			port1);
	FUNC14(&port_dev->status_lock);
	retval = FUNC7(&port_dev->dev);
	if (retval) {
		FUNC18(&port_dev->dev);
		return retval;
	}

	/* Set default policy of port-poweroff disabled. */
	retval = FUNC1(&port_dev->dev, port_dev->req,
			DEV_PM_QOS_FLAGS, PM_QOS_FLAG_NO_POWER_OFF);
	if (retval < 0) {
		FUNC8(&port_dev->dev);
		return retval;
	}

	FUNC9(hub, port1);

	/*
	 * Enable runtime pm and hold a refernce that hub_configure()
	 * will drop once the PM_QOS_NO_POWER_OFF flag state has been set
	 * and the hub has been fully registered (hdev->maxchild set).
	 */
	FUNC17(&port_dev->dev);
	FUNC16(&port_dev->dev);
	FUNC15(&port_dev->dev);
	FUNC6(&port_dev->dev);

	/*
	 * Keep hidden the ability to enable port-poweroff if the hub
	 * does not support power switching.
	 */
	if (!FUNC10(hub))
		return 0;

	/* Attempt to let userspace take over the policy. */
	retval = FUNC2(&port_dev->dev,
			PM_QOS_FLAG_NO_POWER_OFF);
	if (retval < 0) {
		FUNC5(&port_dev->dev, "failed to expose pm_qos_no_poweroff\n");
		return 0;
	}

	/* Userspace owns the policy, drop the kernel 'no_poweroff' request. */
	retval = FUNC3(port_dev->req);
	if (retval >= 0) {
		FUNC12(port_dev->req);
		port_dev->req = NULL;
	}
	return 0;
}