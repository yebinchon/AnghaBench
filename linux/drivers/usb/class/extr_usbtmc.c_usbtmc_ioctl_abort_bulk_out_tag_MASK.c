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
typedef  int u8 ;
struct usbtmc_device_data {int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  usb_dev; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USBTMC_MAX_READS_TO_CLEAR_BULK_IN ; 
 int /*<<< orphan*/  USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS ; 
 int /*<<< orphan*/  USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT ; 
 int USBTMC_STATUS_PENDING ; 
 int USBTMC_STATUS_SUCCESS ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct usbtmc_device_data *data,
					   u8 tag)
{
	struct device *dev;
	u8 *buffer;
	int rv;
	int n;

	dev = &data->intf->dev;

	buffer = FUNC3(8, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	rv = FUNC6(data->usb_dev,
			     FUNC7(data->usb_dev, 0),
			     USBTMC_REQUEST_INITIATE_ABORT_BULK_OUT,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
			     tag, data->bulk_out,
			     buffer, 2, USB_CTRL_GET_TIMEOUT);

	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}

	FUNC0(dev, "INITIATE_ABORT_BULK_OUT returned %x\n", buffer[0]);

	if (buffer[0] != USBTMC_STATUS_SUCCESS) {
		FUNC1(dev, "INITIATE_ABORT_BULK_OUT returned %x\n",
			buffer[0]);
		rv = -EPERM;
		goto exit;
	}

	n = 0;

usbtmc_abort_bulk_out_check_status:
	/* do not stress device with subsequent requests */
	FUNC4(50);
	rv = FUNC6(data->usb_dev,
			     FUNC7(data->usb_dev, 0),
			     USBTMC_REQUEST_CHECK_ABORT_BULK_OUT_STATUS,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_ENDPOINT,
			     0, data->bulk_out, buffer, 0x08,
			     USB_CTRL_GET_TIMEOUT);
	n++;
	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}

	FUNC0(dev, "CHECK_ABORT_BULK_OUT returned %x\n", buffer[0]);

	if (buffer[0] == USBTMC_STATUS_SUCCESS)
		goto usbtmc_abort_bulk_out_clear_halt;

	if ((buffer[0] == USBTMC_STATUS_PENDING) &&
	    (n < USBTMC_MAX_READS_TO_CLEAR_BULK_IN))
		goto usbtmc_abort_bulk_out_check_status;

	rv = -EPERM;
	goto exit;

usbtmc_abort_bulk_out_clear_halt:
	rv = FUNC5(data->usb_dev,
			    FUNC8(data->usb_dev, data->bulk_out));

	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}
	rv = 0;

exit:
	FUNC2(buffer);
	return rv;
}