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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int dummy; } ;
struct usb_cytherm {int brightness; int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 struct usb_cytherm* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,struct usb_cytherm*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *interface, 
			 const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC1(interface);
	struct usb_cytherm *dev = NULL;
	int retval = -ENOMEM;

	dev = FUNC2 (sizeof(struct usb_cytherm), GFP_KERNEL);
	if (!dev)
		goto error_mem;

	dev->udev = FUNC3(udev);

	FUNC4 (interface, dev);

	dev->brightness = 0xFF;

	FUNC0 (&interface->dev,
		  "Cypress thermometer device now attached\n");
	return 0;

error_mem:
	return retval;
}