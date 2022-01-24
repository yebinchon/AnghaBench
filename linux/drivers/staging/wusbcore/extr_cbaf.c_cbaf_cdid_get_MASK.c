#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct wusb_cbaf_device_info {int /*<<< orphan*/  BandGroups; int /*<<< orphan*/  CDID; int /*<<< orphan*/  DeviceFriendlyName; int /*<<< orphan*/  Length; } ;
struct device {int dummy; } ;
struct cbaf {int /*<<< orphan*/  device_band_groups; int /*<<< orphan*/  cdid; int /*<<< orphan*/  device_name; int /*<<< orphan*/  buffer_size; TYPE_3__* usb_iface; int /*<<< orphan*/  usb_dev; struct wusb_cbaf_device_info* buffer; } ;
struct TYPE_6__ {TYPE_2__* cur_altsetting; struct device dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bInterfaceNumber; } ;
struct TYPE_5__ {TYPE_1__ desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  CBAF_REQ_GET_ASSOCIATION_REQUEST ; 
 int /*<<< orphan*/  CBA_NAME_LEN ; 
 int ENOENT ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,struct wusb_cbaf_device_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct cbaf *cbaf)
{
	int result;
	struct device *dev = &cbaf->usb_iface->dev;
	struct wusb_cbaf_device_info *di;
	size_t needed;

	di = cbaf->buffer;
	result = FUNC4(
		cbaf->usb_dev, FUNC5(cbaf->usb_dev, 0),
		CBAF_REQ_GET_ASSOCIATION_REQUEST,
		USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
		0x0200, cbaf->usb_iface->cur_altsetting->desc.bInterfaceNumber,
		di, cbaf->buffer_size, USB_CTRL_GET_TIMEOUT);
	if (result < 0) {
		FUNC0(dev, "Cannot request device information: %d\n",
			result);
		return result;
	}

	needed = result < sizeof(*di) ? sizeof(*di) : FUNC2(di->Length);
	if (result < needed) {
		FUNC0(dev, "Not enough data in DEVICE_INFO reply (%zu vs "
			"%zu bytes needed)\n", (size_t)result, needed);
		return -ENOENT;
	}

	FUNC3(cbaf->device_name, di->DeviceFriendlyName, CBA_NAME_LEN);
	cbaf->cdid = di->CDID;
	cbaf->device_band_groups = FUNC1(di->BandGroups);

	return 0;
}