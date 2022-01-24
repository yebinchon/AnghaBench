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
struct r8a66597_device {int address; int /*<<< orphan*/  device_list; TYPE_1__* udev; int /*<<< orphan*/  state; } ;
struct r8a66597 {int address_map; int max_root_hub; TYPE_2__* root_hub; } ;
struct TYPE_4__ {struct r8a66597_device* dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct r8a66597_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct r8a66597 *r8a66597,
			     struct r8a66597_device *dev, int reset)
{
	int port;

	if (!dev)
		return;

	FUNC0(&dev->udev->dev, "free_addr: addr=%d\n", dev->address);

	dev->state = USB_STATE_DEFAULT;
	r8a66597->address_map &= ~(1 << dev->address);
	dev->address = 0;
	/*
	 * Only when resetting USB, it is necessary to erase drvdata. When
	 * a usb device with usb hub is disconnect, "dev->udev" is already
	 * freed on usb_desconnect(). So we cannot access the data.
	 */
	if (reset)
		FUNC1(&dev->udev->dev, NULL);
	FUNC3(&dev->device_list);
	FUNC2(dev);

	for (port = 0; port < r8a66597->max_root_hub; port++) {
		if (r8a66597->root_hub[port].dev == dev) {
			r8a66597->root_hub[port].dev = NULL;
			break;
		}
	}
}