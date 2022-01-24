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
struct usb_serial_port {int bulk_out_size; int /*<<< orphan*/ * bulk_out_buffers; int /*<<< orphan*/  bulk_out_buffer; int /*<<< orphan*/ * write_urbs; int /*<<< orphan*/  write_urb; int /*<<< orphan*/  write_urbs_free; int /*<<< orphan*/  bulk_out_endpointAddress; int /*<<< orphan*/  write_fifo; TYPE_1__* serial; } ;
struct usb_serial_driver {int bulk_out_size; int /*<<< orphan*/  write_bulk_callback; } ;
struct usb_endpoint_descriptor {int /*<<< orphan*/  bEndpointAddress; } ;
struct usb_device {int dummy; } ;
struct TYPE_2__ {struct usb_device* dev; struct usb_serial_driver* type; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_endpoint_descriptor*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct usb_serial_port *port,
					struct usb_endpoint_descriptor *epd)
{
	struct usb_serial_driver *type = port->serial->type;
	struct usb_device *udev = port->serial->dev;
	int buffer_size;
	int i;

	if (FUNC1(&port->write_fifo, PAGE_SIZE, GFP_KERNEL))
		return -ENOMEM;
	if (type->bulk_out_size)
		buffer_size = type->bulk_out_size;
	else
		buffer_size = FUNC5(epd);
	port->bulk_out_size = buffer_size;
	port->bulk_out_endpointAddress = epd->bEndpointAddress;

	for (i = 0; i < FUNC0(port->write_urbs); ++i) {
		FUNC3(i, &port->write_urbs_free);
		port->write_urbs[i] = FUNC4(0, GFP_KERNEL);
		if (!port->write_urbs[i])
			return -ENOMEM;
		port->bulk_out_buffers[i] = FUNC2(buffer_size, GFP_KERNEL);
		if (!port->bulk_out_buffers[i])
			return -ENOMEM;
		FUNC6(port->write_urbs[i], udev,
				FUNC7(udev, epd->bEndpointAddress),
				port->bulk_out_buffers[i], buffer_size,
				type->write_bulk_callback, port);
	}

	port->write_urb = port->write_urbs[0];
	port->bulk_out_buffer = port->bulk_out_buffers[0];

	return 0;
}