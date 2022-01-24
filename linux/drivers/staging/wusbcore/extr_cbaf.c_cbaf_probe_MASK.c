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
struct device {int /*<<< orphan*/  kobj; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct cbaf {int buffer_size; struct cbaf* buffer; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  usb_iface; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct cbaf*) ; 
 int /*<<< orphan*/  cbaf_dev_attr_group ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (struct cbaf*) ; 
 struct cbaf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct cbaf* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (struct usb_interface*,struct cbaf*) ; 

__attribute__((used)) static int FUNC12(struct usb_interface *iface,
		      const struct usb_device_id *id)
{
	struct cbaf *cbaf;
	struct device *dev = &iface->dev;
	int result = -ENOMEM;

	cbaf = FUNC5(sizeof(*cbaf), GFP_KERNEL);
	if (cbaf == NULL)
		goto error_kzalloc;
	cbaf->buffer = FUNC4(512, GFP_KERNEL);
	if (cbaf->buffer == NULL)
		goto error_kmalloc_buffer;

	cbaf->buffer_size = 512;
	cbaf->usb_dev = FUNC7(FUNC2(iface));
	cbaf->usb_iface = FUNC8(iface);
	result = FUNC0(cbaf);
	if (result < 0) {
		FUNC1(dev, "This device is not WUSB-CBAF compliant and is not supported yet.\n");
		goto error_check;
	}

	result = FUNC6(&dev->kobj, &cbaf_dev_attr_group);
	if (result < 0) {
		FUNC1(dev, "Can't register sysfs attr group: %d\n", result);
		goto error_create_group;
	}
	FUNC11(iface, cbaf);
	return 0;

error_create_group:
error_check:
	FUNC10(iface);
	FUNC9(cbaf->usb_dev);
	FUNC3(cbaf->buffer);
error_kmalloc_buffer:
	FUNC3(cbaf);
error_kzalloc:
	return result;
}