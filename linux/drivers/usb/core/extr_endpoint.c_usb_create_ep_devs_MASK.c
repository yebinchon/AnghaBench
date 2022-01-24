#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_host_endpoint {struct ep_device* ep_dev; TYPE_1__ desc; } ;
struct usb_device {int dummy; } ;
struct TYPE_7__ {struct device* parent; int /*<<< orphan*/ * type; int /*<<< orphan*/  groups; } ;
struct ep_device {TYPE_2__ dev; struct usb_device* udev; TYPE_1__* desc; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  ep_dev_groups ; 
 struct ep_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  usb_ep_device_type ; 

int FUNC5(struct device *parent,
			struct usb_host_endpoint *endpoint,
			struct usb_device *udev)
{
	struct ep_device *ep_dev;
	int retval;

	ep_dev = FUNC3(sizeof(*ep_dev), GFP_KERNEL);
	if (!ep_dev) {
		retval = -ENOMEM;
		goto exit;
	}

	ep_dev->desc = &endpoint->desc;
	ep_dev->udev = udev;
	ep_dev->dev.groups = ep_dev_groups;
	ep_dev->dev.type = &usb_ep_device_type;
	ep_dev->dev.parent = parent;
	FUNC0(&ep_dev->dev, "ep_%02x", endpoint->desc.bEndpointAddress);

	retval = FUNC2(&ep_dev->dev);
	if (retval)
		goto error_register;

	FUNC1(&ep_dev->dev);
	endpoint->ep_dev = ep_dev;
	return retval;

error_register:
	FUNC4(&ep_dev->dev);
exit:
	return retval;
}