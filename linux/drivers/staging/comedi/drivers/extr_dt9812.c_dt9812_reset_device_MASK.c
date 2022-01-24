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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  void* u16 ;
typedef  int /*<<< orphan*/  tmp8 ;
typedef  int /*<<< orphan*/  tmp32 ;
typedef  int /*<<< orphan*/  tmp16 ;
struct usb_device {int dummy; } ;
struct dt9812_private {scalar_t__ device; } ;
struct comedi_device {int /*<<< orphan*/  class_dev; struct dt9812_private* private; } ;
typedef  int /*<<< orphan*/  __le32 ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 scalar_t__ DT9812_DEVID_DT9812_10 ; 
 scalar_t__ DT9812_DEVID_DT9812_2PT5 ; 
 int EINVAL ; 
 struct usb_device* FUNC0 (struct comedi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,void*,void*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct comedi_device*,int,int /*<<< orphan*/ *,int) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static int FUNC7(struct comedi_device *dev)
{
	struct usb_device *usb = FUNC0(dev);
	struct dt9812_private *devpriv = dev->private;
	u32 serial;
	u16 vendor;
	u16 product;
	u8 tmp8;
	__le16 tmp16;
	__le32 tmp32;
	int ret;
	int i;

	ret = FUNC3(dev, 0, &tmp8, sizeof(tmp8));
	if (ret) {
		/*
		 * Seems like a configuration reset is necessary if driver is
		 * reloaded while device is attached
		 */
		FUNC6(usb);
		for (i = 0; i < 10; i++) {
			ret = FUNC3(dev, 1, &tmp8, sizeof(tmp8));
			if (ret == 0)
				break;
		}
		if (ret) {
			FUNC1(dev->class_dev,
				"unable to reset configuration\n");
			return ret;
		}
	}

	ret = FUNC3(dev, 1, &tmp16, sizeof(tmp16));
	if (ret) {
		FUNC1(dev->class_dev, "failed to read vendor id\n");
		return ret;
	}
	vendor = FUNC4(tmp16);

	ret = FUNC3(dev, 3, &tmp16, sizeof(tmp16));
	if (ret) {
		FUNC1(dev->class_dev, "failed to read product id\n");
		return ret;
	}
	product = FUNC4(tmp16);

	ret = FUNC3(dev, 5, &tmp16, sizeof(tmp16));
	if (ret) {
		FUNC1(dev->class_dev, "failed to read device id\n");
		return ret;
	}
	devpriv->device = FUNC4(tmp16);

	ret = FUNC3(dev, 7, &tmp32, sizeof(tmp32));
	if (ret) {
		FUNC1(dev->class_dev, "failed to read serial number\n");
		return ret;
	}
	serial = FUNC5(tmp32);

	/* let the user know what node this device is now attached to */
	FUNC2(dev->class_dev, "USB DT9812 (%4.4x.%4.4x.%4.4x) #0x%8.8x\n",
		 vendor, product, devpriv->device, serial);

	if (devpriv->device != DT9812_DEVID_DT9812_10 &&
	    devpriv->device != DT9812_DEVID_DT9812_2PT5) {
		FUNC1(dev->class_dev, "Unsupported device!\n");
		return -EINVAL;
	}

	return 0;
}