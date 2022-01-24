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
struct cypress {int /*<<< orphan*/  udev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_interface*) ; 
 struct cypress* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_interface*,struct cypress*) ; 

__attribute__((used)) static int FUNC5(struct usb_interface *interface,
			 const struct usb_device_id *id)
{
	struct cypress *dev = NULL;
	int retval = -ENOMEM;

	/* allocate memory for our device state and initialize it */
	dev = FUNC2(sizeof(*dev), GFP_KERNEL);
	if (!dev)
		goto error_mem;

	dev->udev = FUNC3(FUNC1(interface));

	/* save our data pointer in this interface device */
	FUNC4(interface, dev);

	/* let the user know that the device is now attached */
	FUNC0(&interface->dev,
		 "Cypress CY7C63xxx device now attached\n");
	return 0;

error_mem:
	return retval;
}