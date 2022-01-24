#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_serial_port {TYPE_4__* serial; } ;
struct usb_device {int dummy; } ;
struct TYPE_8__ {TYPE_3__* interface; struct usb_device* dev; } ;
struct TYPE_7__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GSI_VENDOR_OPENCLOSE ; 
 int USB_DIR_OUT ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_VENDOR ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct usb_serial_port *port, int value)
{
	struct usb_device *dev = port->serial->dev;

	return FUNC0(
		dev,
		FUNC1(dev, 0), /* Send to EP0OUT */
		GSI_VENDOR_OPENCLOSE,
		USB_DIR_OUT|USB_TYPE_VENDOR|USB_RECIP_INTERFACE,
		value, /* wValue = device is open(1) or closed(0) */
		port->serial->interface->cur_altsetting->desc.bInterfaceNumber,
		NULL, 0,  /* There is no data stage */
		5000); /* Timeout till operation fails */
}