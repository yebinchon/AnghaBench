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
struct cdns3_device {TYPE_1__* regs; } ;
typedef  enum usb_device_speed { ____Placeholder_usb_device_speed } usb_device_speed ;
struct TYPE_2__ {int /*<<< orphan*/  usb_conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CONF_LGO_L0 ; 
 int USB_SPEED_SUPER ; 
 int FUNC0 (struct cdns3_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(struct cdns3_device *priv_dev)
{
	enum usb_device_speed speed;

	speed = FUNC0(priv_dev);

	if (speed >= USB_SPEED_SUPER)
		return 0;

	/* Start driving resume signaling to indicate remote wakeup. */
	FUNC1(USB_CONF_LGO_L0, &priv_dev->regs->usb_conf);

	return 0;
}