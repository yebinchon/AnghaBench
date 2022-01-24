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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  speedtch_usb_driver ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct usb_interface*) ; 
 struct usb_interface* FUNC1 (struct usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct usb_device *usb_dev,
					int num_interfaces)
{
	struct usb_interface *cur_intf;
	int i;

	for (i = 0; i < num_interfaces; i++) {
		cur_intf = FUNC1(usb_dev, i);
		if (cur_intf) {
			FUNC2(cur_intf, NULL);
			FUNC0(&speedtch_usb_driver, cur_intf);
		}
	}
}