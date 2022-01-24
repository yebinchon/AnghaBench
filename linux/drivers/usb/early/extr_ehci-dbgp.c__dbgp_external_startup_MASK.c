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
typedef  int u32 ;
struct usb_debug_descriptor {int /*<<< orphan*/  bDebugInEndpoint; int /*<<< orphan*/  bDebugOutEndpoint; } ;
typedef  int /*<<< orphan*/  dbgp_desc ;
struct TYPE_4__ {int /*<<< orphan*/  control; } ;
struct TYPE_3__ {int /*<<< orphan*/ * port_status; int /*<<< orphan*/  command; } ;

/* Variables and functions */
 int CMD_RUN ; 
 int DBGP_CLAIM ; 
 int EIO ; 
 int ENODEV ; 
 int PORT_CONNECT ; 
 int PORT_PE ; 
 int PORT_TEST_PKT ; 
 int USB_DEBUG_DEVNUM ; 
 int USB_DEVICE_DEBUG_MODE ; 
 int USB_DIR_IN ; 
 int USB_DIR_OUT ; 
 int USB_DT_DEBUG ; 
 int USB_RECIP_DEVICE ; 
 int /*<<< orphan*/  USB_REQ_GET_DESCRIPTOR ; 
 int /*<<< orphan*/  USB_REQ_SET_ADDRESS ; 
 int /*<<< orphan*/  USB_REQ_SET_FEATURE ; 
 int USB_TYPE_STANDARD ; 
 int FUNC0 (int,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC1 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_debug_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  dbgp_endpoint_in ; 
 int /*<<< orphan*/  dbgp_endpoint_out ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ dbgp_not_safe ; 
 int dbgp_phys_port ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 TYPE_2__* ehci_debug ; 
 TYPE_1__* ehci_regs ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(void)
{
	int devnum;
	struct usb_debug_descriptor dbgp_desc;
	int ret;
	u32 ctrl, portsc, cmd;
	int dbg_port = dbgp_phys_port;
	int tries = 3;
	int reset_port_tries = 1;
	int try_hard_once = 1;

try_port_reset_again:
	ret = FUNC3();
	if (ret)
		return ret;

	/* Wait for a device to show up in the debug port */
	ret = FUNC7(dbg_port);
	if (ret < 0) {
		portsc = FUNC9(&ehci_regs->port_status[dbg_port - 1]);
		if (!(portsc & PORT_CONNECT) && try_hard_once) {
			/* Last ditch effort to try to force enable
			 * the debug device by using the packet test
			 * ehci command to try and wake it up. */
			try_hard_once = 0;
			cmd = FUNC9(&ehci_regs->command);
			cmd &= ~CMD_RUN;
			FUNC10(cmd, &ehci_regs->command);
			portsc = FUNC9(&ehci_regs->port_status[dbg_port - 1]);
			portsc |= PORT_TEST_PKT;
			FUNC10(portsc, &ehci_regs->port_status[dbg_port - 1]);
			FUNC4("Trying to force debug port online");
			FUNC8(50);
			FUNC2();
			goto try_port_reset_again;
		} else if (reset_port_tries--) {
			goto try_port_reset_again;
		}
		FUNC6("No device found in debug port\n");
		return -EIO;
	}
	FUNC4("wait for port done");

	/* Enable the debug port */
	ctrl = FUNC9(&ehci_debug->control);
	ctrl |= DBGP_CLAIM;
	FUNC10(ctrl, &ehci_debug->control);
	ctrl = FUNC9(&ehci_debug->control);
	if ((ctrl & DBGP_CLAIM) != DBGP_CLAIM) {
		FUNC6("No device in debug port\n");
		FUNC10(ctrl & ~DBGP_CLAIM, &ehci_debug->control);
		return -ENODEV;
	}
	FUNC4("debug ported enabled");

	/* Completely transfer the debug device to the debug controller */
	portsc = FUNC9(&ehci_regs->port_status[dbg_port - 1]);
	portsc &= ~PORT_PE;
	FUNC10(portsc, &ehci_regs->port_status[dbg_port - 1]);

	FUNC5(100);

try_again:
	/* Find the debug device and make it device number 127 */
	for (devnum = 0; devnum <= 127; devnum++) {
		ret = FUNC1(devnum,
			USB_DIR_IN | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
			USB_REQ_GET_DESCRIPTOR, (USB_DT_DEBUG << 8), 0,
			&dbgp_desc, sizeof(dbgp_desc));
		if (ret > 0)
			break;
	}
	if (devnum > 127) {
		FUNC6("Could not find attached debug device\n");
		goto err;
	}
	dbgp_endpoint_out = dbgp_desc.bDebugOutEndpoint;
	dbgp_endpoint_in = dbgp_desc.bDebugInEndpoint;

	/* Move the device to 127 if it isn't already there */
	if (devnum != USB_DEBUG_DEVNUM) {
		ret = FUNC1(devnum,
			USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
			USB_REQ_SET_ADDRESS, USB_DEBUG_DEVNUM, 0, NULL, 0);
		if (ret < 0) {
			FUNC6("Could not move attached device to %d\n",
				USB_DEBUG_DEVNUM);
			goto err;
		}
		FUNC6("debug device renamed to 127\n");
	}

	/* Enable the debug interface */
	ret = FUNC1(USB_DEBUG_DEVNUM,
		USB_DIR_OUT | USB_TYPE_STANDARD | USB_RECIP_DEVICE,
		USB_REQ_SET_FEATURE, USB_DEVICE_DEBUG_MODE, 0, NULL, 0);
	if (ret < 0) {
		FUNC6(" Could not enable the debug device\n");
		goto err;
	}
	FUNC6("debug interface enabled\n");
	/* Perform a small write to get the even/odd data state in sync
	 */
	ret = FUNC0(USB_DEBUG_DEVNUM, dbgp_endpoint_out, " ", 1);
	if (ret < 0) {
		FUNC6("dbgp_bulk_write failed: %d\n", ret);
		goto err;
	}
	FUNC6("small write done\n");
	dbgp_not_safe = 0;

	return 0;
err:
	if (tries--)
		goto try_again;
	return -ENODEV;
}