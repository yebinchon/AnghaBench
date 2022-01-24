#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct usb_port {int quirks; int /*<<< orphan*/  dev; } ;
struct usb_hub {TYPE_2__* hdev; int /*<<< orphan*/ * intfdev; int /*<<< orphan*/  warm_reset_bits; struct usb_port** ports; } ;
struct usb_hcd {TYPE_1__* driver; } ;
struct usb_device {int /*<<< orphan*/  bus; } ;
struct TYPE_6__ {int quirks; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* reset_device ) (struct usb_hcd*,struct usb_device*) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOTCONN ; 
 unsigned int HUB_LONG_RESET_TIME ; 
 int PORT_RESET_TRIES ; 
 int /*<<< orphan*/  USB_PORT_FEAT_BH_PORT_RESET ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_BH_PORT_RESET ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_CONNECTION ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_PORT_LINK_STATE ; 
 int /*<<< orphan*/  USB_PORT_FEAT_C_RESET ; 
 int /*<<< orphan*/  USB_PORT_FEAT_RESET ; 
 int USB_PORT_QUIRK_FAST_ENUM ; 
 int USB_QUIRK_HUB_SLOW_RESET ; 
 int /*<<< orphan*/  USB_STATE_DEFAULT ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 struct usb_hcd* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ehci_cf_port_reset_rwsem ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (struct usb_hub*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (struct usb_hub*,int,struct usb_device*,unsigned int,int) ; 
 scalar_t__ FUNC8 (struct usb_hub*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_hcd*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int,int) ; 

__attribute__((used)) static int FUNC17(struct usb_hub *hub, int port1,
			struct usb_device *udev, unsigned int delay, bool warm)
{
	int i, status;
	u16 portchange, portstatus;
	struct usb_port *port_dev = hub->ports[port1 - 1];
	int reset_recovery_time;

	if (!FUNC5(hub->hdev)) {
		if (warm) {
			FUNC3(hub->intfdev, "only USB3 hub support "
						"warm reset\n");
			return -EINVAL;
		}
		/* Block EHCI CF initialization during the port reset.
		 * Some companion controllers don't like it when they mix.
		 */
		FUNC4(&ehci_cf_port_reset_rwsem);
	} else if (!warm) {
		/*
		 * If the caller hasn't explicitly requested a warm reset,
		 * double check and see if one is needed.
		 */
		if (FUNC6(hub, port1, &portstatus, &portchange) == 0)
			if (FUNC8(hub, port1,
							portstatus))
				warm = true;
	}
	FUNC1(port1, hub->warm_reset_bits);

	/* Reset the port */
	for (i = 0; i < PORT_RESET_TRIES; i++) {
		status = FUNC10(hub->hdev, port1, (warm ?
					USB_PORT_FEAT_BH_PORT_RESET :
					USB_PORT_FEAT_RESET));
		if (status == -ENODEV) {
			;	/* The hub is gone */
		} else if (status) {
			FUNC3(&port_dev->dev,
					"cannot %sreset (err = %d)\n",
					warm ? "warm " : "", status);
		} else {
			status = FUNC7(hub, port1, udev, delay,
								warm);
			if (status && status != -ENOTCONN && status != -ENODEV)
				FUNC2(hub->intfdev,
						"port_wait_reset: err = %d\n",
						status);
		}

		/* Check for disconnect or reset */
		if (status == 0 || status == -ENOTCONN || status == -ENODEV) {
			FUNC14(hub->hdev, port1,
					USB_PORT_FEAT_C_RESET);

			if (!FUNC5(hub->hdev))
				goto done;

			FUNC14(hub->hdev, port1,
					USB_PORT_FEAT_C_BH_PORT_RESET);
			FUNC14(hub->hdev, port1,
					USB_PORT_FEAT_C_PORT_LINK_STATE);

			if (udev)
				FUNC14(hub->hdev, port1,
					USB_PORT_FEAT_C_CONNECTION);

			/*
			 * If a USB 3.0 device migrates from reset to an error
			 * state, re-issue the warm reset.
			 */
			if (FUNC6(hub, port1,
					&portstatus, &portchange) < 0)
				goto done;

			if (!FUNC8(hub, port1,
					portstatus))
				goto done;

			/*
			 * If the port is in SS.Inactive or Compliance Mode, the
			 * hot or warm reset failed.  Try another warm reset.
			 */
			if (!warm) {
				FUNC2(&port_dev->dev,
						"hot reset failed, warm reset\n");
				warm = true;
			}
		}

		FUNC2(&port_dev->dev,
				"not enabled, trying %sreset again...\n",
				warm ? "warm " : "");
		delay = HUB_LONG_RESET_TIME;
	}

	FUNC3(&port_dev->dev, "Cannot enable. Maybe the USB cable is bad?\n");

done:
	if (status == 0) {
		if (port_dev->quirks & USB_PORT_QUIRK_FAST_ENUM)
			FUNC16(10000, 12000);
		else {
			/* TRSTRCY = 10 ms; plus some extra */
			reset_recovery_time = 10 + 40;

			/* Hub needs extra delay after resetting its port. */
			if (hub->hdev->quirks & USB_QUIRK_HUB_SLOW_RESET)
				reset_recovery_time += 100;

			FUNC9(reset_recovery_time);
		}

		if (udev) {
			struct usb_hcd *hcd = FUNC0(udev->bus);

			FUNC13(udev, 0);
			/* The xHC may think the device is already reset,
			 * so ignore the status.
			 */
			if (hcd->driver->reset_device)
				hcd->driver->reset_device(hcd, udev);

			FUNC15(udev, USB_STATE_DEFAULT);
		}
	} else {
		if (udev)
			FUNC15(udev, USB_STATE_NOTATTACHED);
	}

	if (!FUNC5(hub->hdev))
		FUNC12(&ehci_cf_port_reset_rwsem);

	return status;
}