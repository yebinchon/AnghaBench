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
struct wusb_dev {int /*<<< orphan*/ * wusb_cap_descr; struct usb_bos_descriptor* bos; } ;
struct device {int dummy; } ;
struct usb_device {struct device dev; } ;
struct usb_bos_descriptor {int /*<<< orphan*/  wTotalLength; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USB_DT_BOS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (struct usb_bos_descriptor*) ; 
 struct usb_bos_descriptor* FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct usb_bos_descriptor*,size_t) ; 
 int FUNC5 (struct usb_device*,struct wusb_dev*,struct usb_bos_descriptor*,int) ; 

__attribute__((used)) static int FUNC6(struct usb_device *usb_dev,
			    struct wusb_dev *wusb_dev)
{
	ssize_t result;
	struct device *dev = &usb_dev->dev;
	struct usb_bos_descriptor *bos;
	size_t alloc_size = 32, desc_size = 4;

	bos = FUNC2(alloc_size, GFP_KERNEL);
	if (bos == NULL)
		return -ENOMEM;
	result = FUNC4(usb_dev, USB_DT_BOS, 0, bos, desc_size);
	if (result < 4) {
		FUNC0(dev, "Can't get BOS descriptor or too short: %zd\n",
			result);
		goto error_get_descriptor;
	}
	desc_size = FUNC3(bos->wTotalLength);
	if (desc_size >= alloc_size) {
		FUNC1(bos);
		alloc_size = desc_size;
		bos = FUNC2(alloc_size, GFP_KERNEL);
		if (bos == NULL)
			return -ENOMEM;
	}
	result = FUNC4(usb_dev, USB_DT_BOS, 0, bos, desc_size);
	if (result < 0 || result != desc_size) {
		FUNC0(dev, "Can't get  BOS descriptor or too short (need "
			"%zu bytes): %zd\n", desc_size, result);
		goto error_get_descriptor;
	}
	if (result < sizeof(*bos)
	    || FUNC3(bos->wTotalLength) != desc_size) {
		FUNC0(dev, "Can't get  BOS descriptor or too short (need "
			"%zu bytes): %zd\n", desc_size, result);
		goto error_get_descriptor;
	}

	result = FUNC5(usb_dev, wusb_dev, bos, result);
	if (result < 0)
		goto error_bad_bos;
	wusb_dev->bos = bos;
	return 0;

error_bad_bos:
error_get_descriptor:
	FUNC1(bos);
	wusb_dev->wusb_cap_descr = NULL;
	return result;
}