#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct usb_port {int /*<<< orphan*/  dev; scalar_t__ child; int /*<<< orphan*/  portnum; } ;
struct usb_hub {struct usb_device* hdev; int /*<<< orphan*/  error; struct usb_port** ports; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  USB_PORT_FEAT_ENABLE ; 
 int /*<<< orphan*/  USB_SS_PORT_LS_U3 ; 
 int /*<<< orphan*/  USB_STATE_NOTATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC1 (struct usb_device*) ; 
 int FUNC2 (struct usb_hub*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_hub*,struct usb_port*) ; 
 int FUNC4 (struct usb_device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usb_hub *hub, int port1, int set_state)
{
	struct usb_port *port_dev = hub->ports[port1 - 1];
	struct usb_device *hdev = hub->hdev;
	int ret = 0;

	if (!hub->error) {
		if (FUNC1(hub->hdev)) {
			FUNC3(hub, port_dev);
			ret = FUNC2(hub, port_dev->portnum,
						      USB_SS_PORT_LS_U3);
		} else {
			ret = FUNC4(hdev, port1,
					USB_PORT_FEAT_ENABLE);
		}
	}
	if (port_dev->child && set_state)
		FUNC5(port_dev->child, USB_STATE_NOTATTACHED);
	if (ret && ret != -ENODEV)
		FUNC0(&port_dev->dev, "cannot disable (err = %d)\n", ret);
	return ret;
}