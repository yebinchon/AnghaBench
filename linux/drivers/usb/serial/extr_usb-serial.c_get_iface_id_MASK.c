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
struct usb_serial_driver {int /*<<< orphan*/  id_table; } ;
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device_id* FUNC1 (struct usb_interface*,struct usb_serial_driver*) ; 
 struct usb_device_id* FUNC2 (struct usb_interface*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static const struct usb_device_id *FUNC3(struct usb_serial_driver *drv,
						struct usb_interface *intf)
{
	const struct usb_device_id *id;

	id = FUNC2(intf, drv->id_table);
	if (id) {
		FUNC0(&intf->dev, "static descriptor matches\n");
		goto exit;
	}
	id = FUNC1(intf, drv);
	if (id)
		FUNC0(&intf->dev, "dynamic descriptor matches\n");
exit:
	return id;
}