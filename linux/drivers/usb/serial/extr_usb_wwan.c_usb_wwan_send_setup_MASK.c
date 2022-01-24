#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct usb_wwan_port_private {scalar_t__ rts_state; scalar_t__ dtr_state; } ;
struct usb_serial_port {struct usb_serial* serial; } ;
struct usb_serial {TYPE_3__* interface; int /*<<< orphan*/  dev; } ;
struct TYPE_7__ {TYPE_2__* cur_altsetting; } ;
struct TYPE_5__ {int bInterfaceNumber; } ;
struct TYPE_6__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  USB_CTRL_SET_TIMEOUT ; 
 int FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct usb_wwan_port_private* FUNC3 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct usb_serial_port *port)
{
	struct usb_serial *serial = port->serial;
	struct usb_wwan_port_private *portdata;
	int val = 0;
	int ifnum;
	int res;

	portdata = FUNC3(port);

	if (portdata->dtr_state)
		val |= 0x01;
	if (portdata->rts_state)
		val |= 0x02;

	ifnum = serial->interface->cur_altsetting->desc.bInterfaceNumber;

	res = FUNC0(serial->interface);
	if (res)
		return res;

	res = FUNC2(serial->dev, FUNC4(serial->dev, 0),
				0x22, 0x21, val, ifnum, NULL, 0,
				USB_CTRL_SET_TIMEOUT);

	FUNC1(port->serial->interface);

	return res;
}