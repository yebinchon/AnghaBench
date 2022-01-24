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
struct TYPE_4__ {char interface_capabilities; char device_capabilities; char usb488_interface_capabilities; char usb488_device_capabilities; } ;
struct usbtmc_device_data {char usb488_caps; TYPE_1__ capabilities; TYPE_2__* usb_dev; } ;
struct device {int dummy; } ;
struct TYPE_5__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  USBTMC_REQUEST_GET_CAPABILITIES ; 
 char USBTMC_STATUS_SUCCESS ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct usbtmc_device_data *data)
{
	struct device *dev = &data->usb_dev->dev;
	char *buffer;
	int rv = 0;

	buffer = FUNC3(0x18, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	rv = FUNC4(data->usb_dev, FUNC5(data->usb_dev, 0),
			     USBTMC_REQUEST_GET_CAPABILITIES,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			     0, 0, buffer, 0x18, USB_CTRL_GET_TIMEOUT);
	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto err_out;
	}

	FUNC0(dev, "GET_CAPABILITIES returned %x\n", buffer[0]);
	if (buffer[0] != USBTMC_STATUS_SUCCESS) {
		FUNC1(dev, "GET_CAPABILITIES returned %x\n", buffer[0]);
		rv = -EPERM;
		goto err_out;
	}
	FUNC0(dev, "Interface capabilities are %x\n", buffer[4]);
	FUNC0(dev, "Device capabilities are %x\n", buffer[5]);
	FUNC0(dev, "USB488 interface capabilities are %x\n", buffer[14]);
	FUNC0(dev, "USB488 device capabilities are %x\n", buffer[15]);

	data->capabilities.interface_capabilities = buffer[4];
	data->capabilities.device_capabilities = buffer[5];
	data->capabilities.usb488_interface_capabilities = buffer[14];
	data->capabilities.usb488_device_capabilities = buffer[15];
	data->usb488_caps = (buffer[14] & 0x07) | ((buffer[15] & 0x0f) << 4);
	rv = 0;

err_out:
	FUNC2(buffer);
	return rv;
}