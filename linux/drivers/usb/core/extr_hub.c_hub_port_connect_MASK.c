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
typedef  int u16 ;
struct usb_port {int /*<<< orphan*/  dev; struct usb_device* child; int /*<<< orphan*/  port_owner; } ;
struct usb_hub {unsigned int mA_per_port; struct usb_device* hdev; int /*<<< orphan*/ * intfdev; int /*<<< orphan*/  leds; int /*<<< orphan*/ * indicator; scalar_t__ has_indicators; int /*<<< orphan*/  removed_bits; struct usb_port** ports; } ;
struct usb_hcd {TYPE_1__* driver; scalar_t__ usb_phy; } ;
struct TYPE_4__ {scalar_t__ bDeviceClass; int /*<<< orphan*/  bcdUSB; } ;
struct usb_device {scalar_t__ speed; unsigned int bus_mA; scalar_t__ devnum; int quirks; scalar_t__ state; scalar_t__ parent; TYPE_2__ descriptor; int /*<<< orphan*/  dev; int /*<<< orphan*/  wusb; scalar_t__ level; int /*<<< orphan*/  bus; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* relinquish_port ) (struct usb_hcd*,int) ;int /*<<< orphan*/  (* port_handed_over ) (struct usb_hcd*,int) ;} ;

/* Variables and functions */
 int ENODEV ; 
 int ENOTCONN ; 
 int ENOTSUPP ; 
 int /*<<< orphan*/  INDICATOR_AMBER_BLINK ; 
 int SET_CONFIG_TRIES ; 
 scalar_t__ USB_CLASS_HUB ; 
 int USB_DEVICE_SELF_POWERED ; 
 int /*<<< orphan*/  USB_PORT_FEAT_POWER ; 
 int USB_PORT_STAT_CONNECTION ; 
 int USB_PORT_STAT_C_CONNECTION ; 
 int USB_PORT_STAT_C_ENABLE ; 
 int USB_PORT_STAT_ENABLE ; 
 int USB_QUIRK_DELAY_INIT ; 
 int /*<<< orphan*/  USB_RECIP_DEVICE ; 
 scalar_t__ USB_SPEED_FULL ; 
 scalar_t__ USB_SPEED_SUPER ; 
 scalar_t__ USB_SPEED_UNKNOWN ; 
 scalar_t__ USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  USB_STATE_POWERED ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_hub*,struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  device_state_lock ; 
 scalar_t__ highspeed_hubs ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*) ; 
 scalar_t__ FUNC8 (struct usb_hub*) ; 
 scalar_t__ FUNC9 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_hub*) ; 
 int FUNC11 (struct usb_hub*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_hub*,int,int) ; 
 int FUNC13 (struct usb_hub*,struct usb_device*,int,int) ; 
 int FUNC14 (struct usb_hub*) ; 
 int FUNC15 (struct usb_hub*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (struct usb_hub*,int) ; 
 scalar_t__ FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC24 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (struct usb_hcd*,int) ; 
 int /*<<< orphan*/  FUNC28 (struct usb_hcd*,int) ; 
 int /*<<< orphan*/  system_power_efficient_wq ; 
 scalar_t__ FUNC29 (int,int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC30 (struct usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC31 (struct usb_device**) ; 
 int /*<<< orphan*/  FUNC32 (struct usb_device*) ; 
 int FUNC33 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC34 (struct usb_device*,struct usb_hub*,int,int) ; 
 int /*<<< orphan*/  FUNC35 (struct usb_port*) ; 
 int FUNC36 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC37 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC38 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  usb_port_peer_mutex ; 
 int /*<<< orphan*/  FUNC39 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC40 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC41 (struct usb_port*) ; 

__attribute__((used)) static void FUNC42(struct usb_hub *hub, int port1, u16 portstatus,
		u16 portchange)
{
	int status = -ENODEV;
	int i;
	unsigned unit_load;
	struct usb_device *hdev = hub->hdev;
	struct usb_hcd *hcd = FUNC0(hdev->bus);
	struct usb_port *port_dev = hub->ports[port1 - 1];
	struct usb_device *udev = port_dev->child;
	static int unreliable_port = -1;

	/* Disconnect any existing devices under this port */
	if (udev) {
		if (hcd->usb_phy && !hdev->parent)
			FUNC38(hcd->usb_phy, udev->speed);
		FUNC31(&port_dev->child);
	}

	/* We can forget about a "removed" device when there's a physical
	 * disconnect or the connect status changes.
	 */
	if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
			(portchange & USB_PORT_STAT_C_CONNECTION))
		FUNC3(port1, hub->removed_bits);

	if (portchange & (USB_PORT_STAT_C_CONNECTION |
				USB_PORT_STAT_C_ENABLE)) {
		status = FUNC11(hub, port1);
		if (status < 0) {
			if (status != -ENODEV &&
				port1 != unreliable_port &&
				FUNC21())
				FUNC5(&port_dev->dev, "connect-debounce failed\n");
			portstatus &= ~USB_PORT_STAT_CONNECTION;
			unreliable_port = port1;
		} else {
			portstatus = status;
		}
	}

	/* Return now if debouncing failed or nothing is connected or
	 * the device was "removed".
	 */
	if (!(portstatus & USB_PORT_STAT_CONNECTION) ||
			FUNC29(port1, hub->removed_bits)) {

		/*
		 * maybe switch power back on (e.g. root hub was reset)
		 * but only if the port isn't owned by someone else.
		 */
		if (FUNC8(hub)
				&& !FUNC20(hub, portstatus)
				&& !port_dev->port_owner)
			FUNC24(hdev, port1, USB_PORT_FEAT_POWER);

		if (portstatus & USB_PORT_STAT_ENABLE)
			goto done;
		return;
	}
	if (FUNC9(hub->hdev))
		unit_load = 150;
	else
		unit_load = 100;

	status = 0;
	for (i = 0; i < SET_CONFIG_TRIES; i++) {

		/* reallocate for each attempt, since references
		 * to the previous one can escape in various ways
		 */
		udev = FUNC30(hdev, hdev->bus, port1);
		if (!udev) {
			FUNC5(&port_dev->dev,
					"couldn't allocate usb_device\n");
			goto done;
		}

		FUNC40(udev, USB_STATE_POWERED);
		udev->bus_mA = hub->mA_per_port;
		udev->level = hdev->level + 1;
		udev->wusb = FUNC10(hub);

		/* Devices connected to SuperSpeed hubs are USB 3.0 or later */
		if (FUNC9(hub->hdev))
			udev->speed = USB_SPEED_SUPER;
		else
			udev->speed = USB_SPEED_UNKNOWN;

		FUNC2(udev);
		if (udev->devnum <= 0) {
			status = -ENOTCONN;	/* Don't retry */
			goto loop;
		}

		/* reset (non-USB 3.0 devices) and get descriptor */
		FUNC35(port_dev);
		status = FUNC13(hub, udev, port1, i);
		FUNC41(port_dev);
		if (status < 0)
			goto loop;

		if (udev->quirks & USB_QUIRK_DELAY_INIT)
			FUNC17(2000);

		/* consecutive bus-powered hubs aren't reliable; they can
		 * violate the voltage drop budget.  if the new child has
		 * a "powered" LED, users should notice we didn't enable it
		 * (without reading syslog), even without per-port LEDs
		 * on the parent.
		 */
		if (udev->descriptor.bDeviceClass == USB_CLASS_HUB
				&& udev->bus_mA <= unit_load) {
			u16	devstat;

			status = FUNC33(udev, USB_RECIP_DEVICE, 0,
					&devstat);
			if (status) {
				FUNC4(&udev->dev, "get status %d ?\n", status);
				goto loop_disable;
			}
			if ((devstat & (1 << USB_DEVICE_SELF_POWERED)) == 0) {
				FUNC5(&udev->dev,
					"can't connect bus-powered hub "
					"to this port\n");
				if (hub->has_indicators) {
					hub->indicator[port1-1] =
						INDICATOR_AMBER_BLINK;
					FUNC22(
						system_power_efficient_wq,
						&hub->leds, 0);
				}
				status = -ENOTCONN;	/* Don't retry */
				goto loop_disable;
			}
		}

		/* check for devices running slower than they could */
		if (FUNC16(udev->descriptor.bcdUSB) >= 0x0200
				&& udev->speed == USB_SPEED_FULL
				&& highspeed_hubs != 0)
			FUNC1(hub, udev, port1);

		/* Store the parent's children[] pointer.  At this point
		 * udev becomes globally accessible, although presumably
		 * no one will look at it until hdev is unlocked.
		 */
		status = 0;

		FUNC18(&usb_port_peer_mutex);

		/* We mustn't add new devices if the parent hub has
		 * been disconnected; we would race with the
		 * recursively_mark_NOTATTACHED() routine.
		 */
		FUNC25(&device_state_lock);
		if (hdev->state == USB_STATE_NOTATTACHED)
			status = -ENOTCONN;
		else
			port_dev->child = udev;
		FUNC26(&device_state_lock);
		FUNC19(&usb_port_peer_mutex);

		/* Run it through the hoops (find a driver, etc) */
		if (!status) {
			status = FUNC36(udev);
			if (status) {
				FUNC18(&usb_port_peer_mutex);
				FUNC25(&device_state_lock);
				port_dev->child = NULL;
				FUNC26(&device_state_lock);
				FUNC19(&usb_port_peer_mutex);
			} else {
				if (hcd->usb_phy && !hdev->parent)
					FUNC37(hcd->usb_phy,
							udev->speed);
			}
		}

		if (status)
			goto loop_disable;

		status = FUNC15(hub);
		if (status)
			FUNC4(hub->intfdev, "%dmA power budget left\n", status);

		return;

loop_disable:
		FUNC12(hub, port1, 1);
loop:
		FUNC32(udev);
		FUNC23(udev);
		FUNC7(udev);
		FUNC39(udev);
		if ((status == -ENOTCONN) || (status == -ENOTSUPP))
			break;

		/* When halfway through our retry count, power-cycle the port */
		if (i == (SET_CONFIG_TRIES / 2) - 1) {
			FUNC6(&port_dev->dev, "attempt power cycle\n");
			FUNC34(hdev, hub, port1, false);
			FUNC17(2 * FUNC14(hub));
			FUNC34(hdev, hub, port1, true);
			FUNC17(FUNC14(hub));
		}
	}
	if (hub->hdev->parent ||
			!hcd->driver->port_handed_over ||
			!(hcd->driver->port_handed_over)(hcd, port1)) {
		if (status != -ENOTCONN && status != -ENODEV)
			FUNC5(&port_dev->dev,
					"unable to enumerate USB device\n");
	}

done:
	FUNC12(hub, port1, 1);
	if (hcd->driver->relinquish_port && !hub->hdev->parent) {
		if (status != -ENOTCONN && status != -ENODEV)
			hcd->driver->relinquish_port(hcd, port1);
	}
}