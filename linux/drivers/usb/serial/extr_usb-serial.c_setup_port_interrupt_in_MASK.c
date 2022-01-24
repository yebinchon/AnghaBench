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
struct usb_serial_port {int /*<<< orphan*/  interrupt_in_buffer; int /*<<< orphan*/  interrupt_in_urb; int /*<<< orphan*/  interrupt_in_endpointAddress; TYPE_1__* serial; } ;
struct usb_serial_driver {int /*<<< orphan*/  read_int_callback; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bInterval; int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; struct usb_serial_driver* type; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_serial_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port,
					struct usb_endpoint_descriptor *epd)
{
	struct usb_serial_driver *type = port->serial->type;
	struct usb_device *udev = port->serial->dev;
	int buffer_size;

	port->interrupt_in_urb = FUNC1(0, GFP_KERNEL);
	if (!port->interrupt_in_urb)
		return -ENOMEM;
	buffer_size = FUNC2(epd);
	port->interrupt_in_endpointAddress = epd->bEndpointAddress;
	port->interrupt_in_buffer = FUNC0(buffer_size, GFP_KERNEL);
	if (!port->interrupt_in_buffer)
		return -ENOMEM;
	FUNC3(port->interrupt_in_urb, udev,
			FUNC4(udev, epd->bEndpointAddress),
			port->interrupt_in_buffer, buffer_size,
			type->read_int_callback, port,
			epd->bInterval);

	return 0;
}