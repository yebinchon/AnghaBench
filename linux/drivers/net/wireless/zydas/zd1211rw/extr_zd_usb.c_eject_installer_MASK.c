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
typedef  int /*<<< orphan*/  u8 ;
struct usb_interface {struct usb_host_interface* altsetting; } ;
struct TYPE_3__ {int bNumEndpoints; } ;
struct usb_host_interface {TYPE_2__* endpoint; TYPE_1__ desc; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_4__ {struct usb_endpoint_descriptor desc; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 unsigned char* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC7 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct usb_interface *intf)
{
	struct usb_device *udev = FUNC2(intf);
	struct usb_host_interface *iface_desc = &intf->altsetting[0];
	struct usb_endpoint_descriptor *endpoint;
	unsigned char *cmd;
	u8 bulk_out_ep;
	int r;

	if (iface_desc->desc.bNumEndpoints < 2)
		return -ENODEV;

	/* Find bulk out endpoint */
	for (r = 1; r >= 0; r--) {
		endpoint = &iface_desc->endpoint[r].desc;
		if (FUNC6(endpoint) &&
		    FUNC7(endpoint)) {
			bulk_out_ep = endpoint->bEndpointAddress;
			break;
		}
	}
	if (r == -1) {
		FUNC0(&udev->dev,
			"zd1211rw: Could not find bulk out endpoint\n");
		return -ENODEV;
	}

	cmd = FUNC4(31, GFP_KERNEL);
	if (cmd == NULL)
		return -ENODEV;

	/* USB bulk command block */
	cmd[0] = 0x55;	/* bulk command signature */
	cmd[1] = 0x53;	/* bulk command signature */
	cmd[2] = 0x42;	/* bulk command signature */
	cmd[3] = 0x43;	/* bulk command signature */
	cmd[14] = 6;	/* command length */

	cmd[15] = 0x1b;	/* SCSI command: START STOP UNIT */
	cmd[19] = 0x2;	/* eject disc */

	FUNC1(&udev->dev, "Ejecting virtual installer media...\n");
	r = FUNC5(udev, FUNC9(udev, bulk_out_ep),
		cmd, 31, NULL, 2000);
	FUNC3(cmd);
	if (r)
		return r;

	/* At this point, the device disconnects and reconnects with the real
	 * ID numbers. */

	FUNC8(intf, NULL);
	return 0;
}