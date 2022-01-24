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
struct usb_wwan_intf_private {int /*<<< orphan*/  susp_lock; } ;
struct usb_serial {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct usb_wwan_intf_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial*,struct usb_wwan_intf_private*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial *serial)
{
	struct usb_wwan_intf_private *data;

	data = FUNC0(sizeof(struct usb_wwan_intf_private), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC1(&data->susp_lock);
	FUNC2(serial, data);
	return 0;
}