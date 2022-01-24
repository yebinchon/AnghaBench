#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int minor; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  dev; } ;
struct usb_class_driver {int minor_base; char* name; int /*<<< orphan*/ * fops; } ;
typedef  int /*<<< orphan*/  name ;
struct TYPE_2__ {int /*<<< orphan*/  class; } ;

/* Variables and functions */
 int EADDRINUSE ; 
 int EINVAL ; 
 int EXFULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_USB_MINORS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  USB_MAJOR ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct usb_class_driver*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  init_usb_class_mutex ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  minor_rwsem ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 TYPE_1__* usb_class ; 
 int /*<<< orphan*/ ** usb_minors ; 

int FUNC12(struct usb_interface *intf,
		     struct usb_class_driver *class_driver)
{
	int retval;
	int minor_base = class_driver->minor_base;
	int minor;
	char name[20];

#ifdef CONFIG_USB_DYNAMIC_MINORS
	/*
	 * We don't care what the device tries to start at, we want to start
	 * at zero to pack the devices into the smallest available space with
	 * no holes in the minor range.
	 */
	minor_base = 0;
#endif

	if (class_driver->fops == NULL)
		return -EINVAL;
	if (intf->minor >= 0)
		return -EADDRINUSE;

	FUNC8(&init_usb_class_mutex);
	retval = FUNC6();
	FUNC9(&init_usb_class_mutex);

	if (retval)
		return retval;

	FUNC3(&intf->dev, "looking for a minor, starting at %d\n", minor_base);

	FUNC5(&minor_rwsem);
	for (minor = minor_base; minor < MAX_USB_MINORS; ++minor) {
		if (usb_minors[minor])
			continue;

		usb_minors[minor] = class_driver->fops;
		intf->minor = minor;
		break;
	}
	if (intf->minor < 0) {
		FUNC11(&minor_rwsem);
		return -EXFULL;
	}

	/* create a usb class device for this usb interface */
	FUNC10(name, sizeof(name), class_driver->name, minor - minor_base);
	intf->usb_dev = FUNC4(usb_class->class, &intf->dev,
				      FUNC1(USB_MAJOR, minor), class_driver,
				      "%s", FUNC7(name));
	if (FUNC0(intf->usb_dev)) {
		usb_minors[minor] = NULL;
		intf->minor = -1;
		retval = FUNC2(intf->usb_dev);
	}
	FUNC11(&minor_rwsem);
	return retval;
}