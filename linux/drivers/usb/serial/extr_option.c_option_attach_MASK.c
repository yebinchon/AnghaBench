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
struct usb_wwan_intf_private {int use_send_setup; int /*<<< orphan*/  susp_lock; } ;
struct usb_serial {TYPE_2__* interface; } ;
struct usb_interface_descriptor {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_4__ {TYPE_1__* cur_altsetting; } ;
struct TYPE_3__ {struct usb_interface_descriptor desc; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_wwan_intf_private* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_serial*,struct usb_wwan_intf_private*) ; 

__attribute__((used)) static int FUNC5(struct usb_serial *serial)
{
	struct usb_interface_descriptor *iface_desc;
	struct usb_wwan_intf_private *data;
	unsigned long device_flags;

	data = FUNC1(sizeof(struct usb_wwan_intf_private), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	/* Retrieve device flags stored at probe. */
	device_flags = (unsigned long)FUNC3(serial);

	iface_desc = &serial->interface->cur_altsetting->desc;

	if (!(device_flags & FUNC0(iface_desc->bInterfaceNumber)))
		data->use_send_setup = 1;

	FUNC2(&data->susp_lock);

	FUNC4(serial, data);

	return 0;
}