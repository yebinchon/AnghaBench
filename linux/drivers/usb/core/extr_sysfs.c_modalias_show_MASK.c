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
struct usb_interface {int /*<<< orphan*/  cur_altsetting; } ;
struct TYPE_4__ {int bInterfaceClass; int bInterfaceSubClass; int bInterfaceProtocol; int bInterfaceNumber; } ;
struct usb_host_interface {TYPE_2__ desc; } ;
struct TYPE_3__ {int bDeviceClass; int bDeviceSubClass; int bDeviceProtocol; int /*<<< orphan*/  bcdDevice; int /*<<< orphan*/  idProduct; int /*<<< orphan*/  idVendor; } ;
struct usb_device {TYPE_1__ descriptor; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 struct usb_host_interface* FUNC0 (int /*<<< orphan*/ ) ; 
 struct usb_device* FUNC1 (struct usb_interface*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int,int,int,int,int,int,int,int,int,int) ; 
 struct usb_interface* FUNC4 (struct device*) ; 

__attribute__((used)) static ssize_t FUNC5(struct device *dev, struct device_attribute *attr,
			     char *buf)
{
	struct usb_interface *intf;
	struct usb_device *udev;
	struct usb_host_interface *alt;

	intf = FUNC4(dev);
	udev = FUNC1(intf);
	alt = FUNC0(intf->cur_altsetting);

	return FUNC3(buf, "usb:v%04Xp%04Xd%04Xdc%02Xdsc%02Xdp%02X"
			"ic%02Xisc%02Xip%02Xin%02X\n",
			FUNC2(udev->descriptor.idVendor),
			FUNC2(udev->descriptor.idProduct),
			FUNC2(udev->descriptor.bcdDevice),
			udev->descriptor.bDeviceClass,
			udev->descriptor.bDeviceSubClass,
			udev->descriptor.bDeviceProtocol,
			alt->desc.bInterfaceClass,
			alt->desc.bInterfaceSubClass,
			alt->desc.bInterfaceProtocol,
			alt->desc.bInterfaceNumber);
}