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
struct usb_wwan_intf_private {int use_send_setup; int /*<<< orphan*/  susp_lock; } ;
struct usb_serial {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_wwan_intf_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct usb_serial*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_serial*,struct usb_wwan_intf_private*) ; 

__attribute__((used)) static int FUNC4(struct usb_serial *serial)
{
	struct usb_wwan_intf_private *data;
	bool sendsetup;

	data = FUNC0(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	sendsetup = !!(unsigned long)(FUNC2(serial));
	if (sendsetup)
		data->use_send_setup = 1;

	FUNC1(&data->susp_lock);

	FUNC3(serial, data);

	return 0;
}