#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_endpoints {int /*<<< orphan*/  num_interrupt_out; struct usb_endpoint_descriptor** interrupt_out; int /*<<< orphan*/  num_interrupt_in; struct usb_endpoint_descriptor** interrupt_in; int /*<<< orphan*/  num_bulk_out; struct usb_endpoint_descriptor** bulk_out; int /*<<< orphan*/  num_bulk_in; struct usb_endpoint_descriptor** bulk_in; } ;
struct usb_serial {TYPE_1__* interface; } ;
struct TYPE_5__ {unsigned int bNumEndpoints; } ;
struct usb_host_interface {TYPE_3__* endpoint; TYPE_2__ desc; } ;
struct usb_endpoint_descriptor {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_6__ {struct usb_endpoint_descriptor desc; } ;
struct TYPE_4__ {struct usb_host_interface* cur_altsetting; struct device dev; } ;

/* Variables and functions */
 int FUNC0 (struct usb_endpoint_descriptor**) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int USB_MAXENDPOINTS ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,unsigned int) ; 
 scalar_t__ FUNC3 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC4 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC5 (struct usb_endpoint_descriptor*) ; 
 scalar_t__ FUNC6 (struct usb_endpoint_descriptor*) ; 

__attribute__((used)) static void FUNC7(struct usb_serial *serial,
					struct usb_serial_endpoints *epds)
{
	struct device *dev = &serial->interface->dev;
	struct usb_host_interface *iface_desc;
	struct usb_endpoint_descriptor *epd;
	unsigned int i;

	FUNC1(FUNC0(epds->bulk_in) < USB_MAXENDPOINTS / 2);
	FUNC1(FUNC0(epds->bulk_out) < USB_MAXENDPOINTS / 2);
	FUNC1(FUNC0(epds->interrupt_in) < USB_MAXENDPOINTS / 2);
	FUNC1(FUNC0(epds->interrupt_out) < USB_MAXENDPOINTS / 2);

	iface_desc = serial->interface->cur_altsetting;
	for (i = 0; i < iface_desc->desc.bNumEndpoints; ++i) {
		epd = &iface_desc->endpoint[i].desc;

		if (FUNC3(epd)) {
			FUNC2(dev, "found bulk in on endpoint %u\n", i);
			epds->bulk_in[epds->num_bulk_in++] = epd;
		} else if (FUNC4(epd)) {
			FUNC2(dev, "found bulk out on endpoint %u\n", i);
			epds->bulk_out[epds->num_bulk_out++] = epd;
		} else if (FUNC5(epd)) {
			FUNC2(dev, "found interrupt in on endpoint %u\n", i);
			epds->interrupt_in[epds->num_interrupt_in++] = epd;
		} else if (FUNC6(epd)) {
			FUNC2(dev, "found interrupt out on endpoint %u\n", i);
			epds->interrupt_out[epds->num_interrupt_out++] = epd;
		}
	}
}