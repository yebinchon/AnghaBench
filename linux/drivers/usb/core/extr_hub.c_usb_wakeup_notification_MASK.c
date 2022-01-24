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
struct usb_port {TYPE_1__* child; } ;
struct usb_hub {int /*<<< orphan*/  wakeup_bits; struct usb_port** ports; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct usb_hub*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 struct usb_hub* FUNC3 (struct usb_device*) ; 

void FUNC4(struct usb_device *hdev,
		unsigned int portnum)
{
	struct usb_hub *hub;
	struct usb_port *port_dev;

	if (!hdev)
		return;

	hub = FUNC3(hdev);
	if (hub) {
		port_dev = hub->ports[portnum - 1];
		if (port_dev && port_dev->child)
			FUNC1(&port_dev->child->dev, 0);

		FUNC2(portnum, hub->wakeup_bits);
		FUNC0(hub);
	}
}