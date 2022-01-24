#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct usbdevfs_ioctl {int ioctl_code; int /*<<< orphan*/  data; int /*<<< orphan*/  ifno; } ;
struct TYPE_5__ {int /*<<< orphan*/  driver; } ;
struct usb_interface {TYPE_2__ dev; } ;
struct usb_driver {int (* unlocked_ioctl ) (struct usb_interface*,int,void*) ;} ;
struct usb_dev_state {TYPE_1__* dev; scalar_t__ privileges_dropped; } ;
struct TYPE_4__ {scalar_t__ state; } ;

/* Variables and functions */
 int EACCES ; 
 int EBUSY ; 
 int EFAULT ; 
 int EHOSTUNREACH ; 
 int EINVAL ; 
 int ENODATA ; 
 int ENODEV ; 
 int ENOIOCTLCMD ; 
 int ENOMEM ; 
 int ENOTTY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  USBDEVFS_CONNECT 129 
#define  USBDEVFS_DISCONNECT 128 
 scalar_t__ USB_STATE_CONFIGURED ; 
 int FUNC0 (int) ; 
 int _IOC_READ ; 
 int FUNC1 (int) ; 
 int _IOC_WRITE ; 
 int /*<<< orphan*/  FUNC2 (struct usb_dev_state*) ; 
 scalar_t__ FUNC3 (void*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,char*) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 void* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (struct usb_interface*,int,void*) ; 
 struct usb_driver* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct usb_driver*,struct usb_interface*) ; 
 struct usb_interface* FUNC13 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct usb_dev_state *ps, struct usbdevfs_ioctl *ctl)
{
	int			size;
	void			*buf = NULL;
	int			retval = 0;
	struct usb_interface    *intf = NULL;
	struct usb_driver       *driver = NULL;

	if (ps->privileges_dropped)
		return -EACCES;

	if (!FUNC2(ps))
		return -ENODEV;

	/* alloc buffer */
	size = FUNC1(ctl->ioctl_code);
	if (size > 0) {
		buf = FUNC8(size, GFP_KERNEL);
		if (buf == NULL)
			return -ENOMEM;
		if ((FUNC0(ctl->ioctl_code) & _IOC_WRITE)) {
			if (FUNC3(buf, ctl->data, size)) {
				FUNC7(buf);
				return -EFAULT;
			}
		} else {
			FUNC9(buf, 0, size);
		}
	}

	if (ps->dev->state != USB_STATE_CONFIGURED)
		retval = -EHOSTUNREACH;
	else if (!(intf = FUNC13(ps->dev, ctl->ifno)))
		retval = -EINVAL;
	else switch (ctl->ioctl_code) {

	/* disconnect kernel driver from interface */
	case USBDEVFS_DISCONNECT:
		if (intf->dev.driver) {
			driver = FUNC11(intf->dev.driver);
			FUNC5(&intf->dev, "disconnect by usbfs\n");
			FUNC12(driver, intf);
		} else
			retval = -ENODATA;
		break;

	/* let kernel drivers try to (re)bind to the interface */
	case USBDEVFS_CONNECT:
		if (!intf->dev.driver)
			retval = FUNC6(&intf->dev);
		else
			retval = -EBUSY;
		break;

	/* talk directly to the interface's driver */
	default:
		if (intf->dev.driver)
			driver = FUNC11(intf->dev.driver);
		if (driver == NULL || driver->unlocked_ioctl == NULL) {
			retval = -ENOTTY;
		} else {
			retval = driver->unlocked_ioctl(intf, ctl->ioctl_code, buf);
			if (retval == -ENOIOCTLCMD)
				retval = -ENOTTY;
		}
	}

	/* cleanup and return */
	if (retval >= 0
			&& (FUNC0(ctl->ioctl_code) & _IOC_READ) != 0
			&& size > 0
			&& FUNC4(ctl->data, buf, size) != 0)
		retval = -EFAULT;

	FUNC7(buf);
	return retval;
}