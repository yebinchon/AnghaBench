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
typedef  scalar_t__ u8 ;
typedef  scalar_t__ u32 ;
struct usb_dynids {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_info; int /*<<< orphan*/  match_flags; scalar_t__ bInterfaceClass; scalar_t__ idProduct; scalar_t__ idVendor; } ;
struct usb_dynid {int /*<<< orphan*/  node; TYPE_1__ id; } ;
struct usb_device_id {scalar_t__ idVendor; scalar_t__ idProduct; int /*<<< orphan*/  driver_info; scalar_t__ match_flags; } ;
struct device_driver {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  USB_DEVICE_ID_MATCH_DEVICE ; 
 int /*<<< orphan*/  USB_DEVICE_ID_MATCH_INT_CLASS ; 
 int FUNC1 (struct device_driver*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_dynid*) ; 
 struct usb_dynid* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char const*,char*,scalar_t__*,scalar_t__*,unsigned int*,scalar_t__*,scalar_t__*) ; 

ssize_t FUNC8(struct usb_dynids *dynids,
			 const struct usb_device_id *id_table,
			 struct device_driver *driver,
			 const char *buf, size_t count)
{
	struct usb_dynid *dynid;
	u32 idVendor = 0;
	u32 idProduct = 0;
	unsigned int bInterfaceClass = 0;
	u32 refVendor, refProduct;
	int fields = 0;
	int retval = 0;

	fields = FUNC7(buf, "%x %x %x %x %x", &idVendor, &idProduct,
			&bInterfaceClass, &refVendor, &refProduct);
	if (fields < 2)
		return -EINVAL;

	dynid = FUNC3(sizeof(*dynid), GFP_KERNEL);
	if (!dynid)
		return -ENOMEM;

	FUNC0(&dynid->node);
	dynid->id.idVendor = idVendor;
	dynid->id.idProduct = idProduct;
	dynid->id.match_flags = USB_DEVICE_ID_MATCH_DEVICE;
	if (fields > 2 && bInterfaceClass) {
		if (bInterfaceClass > 255) {
			retval = -EINVAL;
			goto fail;
		}

		dynid->id.bInterfaceClass = (u8)bInterfaceClass;
		dynid->id.match_flags |= USB_DEVICE_ID_MATCH_INT_CLASS;
	}

	if (fields > 4) {
		const struct usb_device_id *id = id_table;

		if (!id) {
			retval = -ENODEV;
			goto fail;
		}

		for (; id->match_flags; id++)
			if (id->idVendor == refVendor && id->idProduct == refProduct)
				break;

		if (id->match_flags) {
			dynid->id.driver_info = id->driver_info;
		} else {
			retval = -ENODEV;
			goto fail;
		}
	}

	FUNC5(&dynids->lock);
	FUNC4(&dynid->node, &dynids->list);
	FUNC6(&dynids->lock);

	retval = FUNC1(driver);

	if (retval)
		return retval;
	return count;

fail:
	FUNC2(dynid);
	return retval;
}