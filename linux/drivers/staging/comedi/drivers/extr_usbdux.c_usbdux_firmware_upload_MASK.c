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
typedef  int u8 ;
struct usb_device {int dummy; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  BULK_TIMEOUT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBDUX_CPU_CS ; 
 int /*<<< orphan*/  USBDUX_FIRMWARE_CMD ; 
 size_t USBDUX_FIRMWARE_MAX_LEN ; 
 int /*<<< orphan*/  VENDOR_DIR_OUT ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int* FUNC4 (int const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev,
				  const u8 *data, size_t size,
				  unsigned long context)
{
	struct usb_device *usb = FUNC0(dev);
	u8 *buf;
	u8 *tmp;
	int ret;

	if (!data)
		return 0;

	if (size > USBDUX_FIRMWARE_MAX_LEN) {
		FUNC1(dev->class_dev,
			"usbdux firmware binary it too large for FX2.\n");
		return -ENOMEM;
	}

	/* we generate a local buffer for the firmware */
	buf = FUNC4(data, size, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* we need a malloc'ed buffer for usb_control_msg() */
	tmp = FUNC3(1, GFP_KERNEL);
	if (!tmp) {
		FUNC2(buf);
		return -ENOMEM;
	}

	/* stop the current firmware on the device */
	*tmp = 1;	/* 7f92 to one */
	ret = FUNC5(usb, FUNC6(usb, 0),
			      USBDUX_FIRMWARE_CMD,
			      VENDOR_DIR_OUT,
			      USBDUX_CPU_CS, 0x0000,
			      tmp, 1,
			      BULK_TIMEOUT);
	if (ret < 0) {
		FUNC1(dev->class_dev, "can not stop firmware\n");
		goto done;
	}

	/* upload the new firmware to the device */
	ret = FUNC5(usb, FUNC6(usb, 0),
			      USBDUX_FIRMWARE_CMD,
			      VENDOR_DIR_OUT,
			      0, 0x0000,
			      buf, size,
			      BULK_TIMEOUT);
	if (ret < 0) {
		FUNC1(dev->class_dev, "firmware upload failed\n");
		goto done;
	}

	/* start the new firmware on the device */
	*tmp = 0;	/* 7f92 to zero */
	ret = FUNC5(usb, FUNC6(usb, 0),
			      USBDUX_FIRMWARE_CMD,
			      VENDOR_DIR_OUT,
			      USBDUX_CPU_CS, 0x0000,
			      tmp, 1,
			      BULK_TIMEOUT);
	if (ret < 0)
		FUNC1(dev->class_dev, "can not start firmware\n");

done:
	FUNC2(tmp);
	FUNC2(buf);
	return ret;
}