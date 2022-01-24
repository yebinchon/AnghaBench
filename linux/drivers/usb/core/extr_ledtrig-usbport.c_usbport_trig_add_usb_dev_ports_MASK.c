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
struct usbport_trig_data {int dummy; } ;
struct usb_device {int maxchild; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct usbport_trig_data*,struct usb_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(struct usb_device *usb_dev,
					  void *data)
{
	struct usbport_trig_data *usbport_data = data;
	int i;

	for (i = 1; i <= usb_dev->maxchild; i++)
		FUNC1(usbport_data, usb_dev,
				      FUNC0(&usb_dev->dev), i);

	return 0;
}