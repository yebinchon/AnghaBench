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
typedef  int u32 ;
typedef  int u16 ;
struct usb_hub {int /*<<< orphan*/  hdev; TYPE_1__** ports; } ;
struct usb_device {int rx_lanes; int tx_lanes; int /*<<< orphan*/  speed; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EBUSY ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  HUB_EXT_PORT_STATUS ; 
 unsigned int HUB_LONG_RESET_TIME ; 
 int HUB_RESET_TIMEOUT ; 
 int HUB_SHORT_RESET_TIME ; 
 int FUNC0 (int) ; 
 int USB_EXT_PORT_STAT_RX_SPEED_ID ; 
 int FUNC1 (int) ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_CONNECTION ; 
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_ENABLE ; 
 int USB_PORT_STAT_HIGH_SPEED ; 
 int USB_PORT_STAT_LOW_SPEED ; 
 int USB_PORT_STAT_RESET ; 
 int /*<<< orphan*/  USB_SPEED_FULL ; 
 int /*<<< orphan*/  USB_SPEED_HIGH ; 
 int /*<<< orphan*/  USB_SPEED_LOW ; 
 int /*<<< orphan*/  USB_SPEED_SUPER ; 
 int /*<<< orphan*/  USB_SPEED_SUPER_PLUS ; 
 int /*<<< orphan*/  USB_SPEED_WIRELESS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,char*,unsigned int) ; 
 int FUNC3 (struct usb_hub*,int,int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct usb_hub*) ; 
 int FUNC7 (struct usb_hub*,int,int*,int*) ; 
 scalar_t__ FUNC8 (struct usb_hub*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usb_hub *hub, int port1,
			struct usb_device *udev, unsigned int delay, bool warm)
{
	int delay_time, ret;
	u16 portstatus;
	u16 portchange;
	u32 ext_portstatus = 0;

	for (delay_time = 0;
			delay_time < HUB_RESET_TIMEOUT;
			delay_time += delay) {
		/* wait to give the device a chance to reset */
		FUNC9(delay);

		/* read and decode port status */
		if (FUNC5(hub->hdev))
			ret = FUNC3(hub, port1,
						  HUB_EXT_PORT_STATUS,
						  &portstatus, &portchange,
						  &ext_portstatus);
		else
			ret = FUNC7(hub, port1, &portstatus,
					      &portchange);
		if (ret < 0)
			return ret;

		/*
		 * The port state is unknown until the reset completes.
		 *
		 * On top of that, some chips may require additional time
		 * to re-establish a connection after the reset is complete,
		 * so also wait for the connection to be re-established.
		 */
		if (!(portstatus & USB_PORT_STAT_RESET) &&
		    (portstatus & USB_PORT_STAT_CONNECTION))
			break;

		/* switch to the long delay after two short delay failures */
		if (delay_time >= 2 * HUB_SHORT_RESET_TIME)
			delay = HUB_LONG_RESET_TIME;

		FUNC2(&hub->ports[port1 - 1]->dev,
				"not %sreset yet, waiting %dms\n",
				warm ? "warm " : "", delay);
	}

	if ((portstatus & USB_PORT_STAT_RESET))
		return -EBUSY;

	if (FUNC8(hub, port1, portstatus))
		return -ENOTCONN;

	/* Device went away? */
	if (!(portstatus & USB_PORT_STAT_CONNECTION))
		return -ENOTCONN;

	/* Retry if connect change is set but status is still connected.
	 * A USB 3.0 connection may bounce if multiple warm resets were issued,
	 * but the device may have successfully re-connected. Ignore it.
	 */
	if (!FUNC4(hub->hdev) &&
	    (portchange & USB_PORT_STAT_C_CONNECTION)) {
		FUNC11(hub->hdev, port1,
				       USB_PORT_FEAT_C_CONNECTION);
		return -EAGAIN;
	}

	if (!(portstatus & USB_PORT_STAT_ENABLE))
		return -EBUSY;

	if (!udev)
		return 0;

	if (FUNC5(hub->hdev)) {
		/* extended portstatus Rx and Tx lane count are zero based */
		udev->rx_lanes = FUNC0(ext_portstatus) + 1;
		udev->tx_lanes = FUNC1(ext_portstatus) + 1;
	} else {
		udev->rx_lanes = 1;
		udev->tx_lanes = 1;
	}
	if (FUNC6(hub))
		udev->speed = USB_SPEED_WIRELESS;
	else if (FUNC5(hub->hdev) &&
		 FUNC10(hub->hdev, ext_portstatus &
				   USB_EXT_PORT_STAT_RX_SPEED_ID))
		udev->speed = USB_SPEED_SUPER_PLUS;
	else if (FUNC4(hub->hdev))
		udev->speed = USB_SPEED_SUPER;
	else if (portstatus & USB_PORT_STAT_HIGH_SPEED)
		udev->speed = USB_SPEED_HIGH;
	else if (portstatus & USB_PORT_STAT_LOW_SPEED)
		udev->speed = USB_SPEED_LOW;
	else
		udev->speed = USB_SPEED_FULL;
	return 0;
}