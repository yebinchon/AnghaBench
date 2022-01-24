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
struct usbtmc_device_data {int /*<<< orphan*/  bulk_out; int /*<<< orphan*/  usb_dev; int /*<<< orphan*/  bulk_in; TYPE_1__* intf; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int USBTMC_BUFSIZE ; 
 int USBTMC_MAX_READS_TO_CLEAR_BULK_IN ; 
 int /*<<< orphan*/  USBTMC_REQUEST_CHECK_CLEAR_STATUS ; 
 int /*<<< orphan*/  USBTMC_REQUEST_INITIATE_CLEAR ; 
 int USBTMC_STATUS_PENDING ; 
 int USBTMC_STATUS_SUCCESS ; 
 int /*<<< orphan*/  USB_CTRL_GET_TIMEOUT ; 
 int USB_DIR_IN ; 
 int USB_RECIP_INTERFACE ; 
 int USB_TYPE_CLASS ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*) ; 
 int* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int,int,int*,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct usbtmc_device_data *data)
{
	struct device *dev;
	u8 *buffer;
	int rv;
	int n;
	int actual = 0;

	dev = &data->intf->dev;

	FUNC0(dev, "Sending INITIATE_CLEAR request\n");

	buffer = FUNC3(USBTMC_BUFSIZE, GFP_KERNEL);
	if (!buffer)
		return -ENOMEM;

	rv = FUNC8(data->usb_dev,
			     FUNC10(data->usb_dev, 0),
			     USBTMC_REQUEST_INITIATE_CLEAR,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			     0, 0, buffer, 1, USB_CTRL_GET_TIMEOUT);
	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}

	FUNC0(dev, "INITIATE_CLEAR returned %x\n", buffer[0]);

	if (buffer[0] != USBTMC_STATUS_SUCCESS) {
		FUNC1(dev, "INITIATE_CLEAR returned %x\n", buffer[0]);
		rv = -EPERM;
		goto exit;
	}

	n = 0;

usbtmc_clear_check_status:

	FUNC0(dev, "Sending CHECK_CLEAR_STATUS request\n");

	rv = FUNC8(data->usb_dev,
			     FUNC10(data->usb_dev, 0),
			     USBTMC_REQUEST_CHECK_CLEAR_STATUS,
			     USB_DIR_IN | USB_TYPE_CLASS | USB_RECIP_INTERFACE,
			     0, 0, buffer, 2, USB_CTRL_GET_TIMEOUT);
	if (rv < 0) {
		FUNC1(dev, "usb_control_msg returned %d\n", rv);
		goto exit;
	}

	FUNC0(dev, "CHECK_CLEAR_STATUS returned %x\n", buffer[0]);

	if (buffer[0] == USBTMC_STATUS_SUCCESS)
		goto usbtmc_clear_bulk_out_halt;

	if (buffer[0] != USBTMC_STATUS_PENDING) {
		FUNC1(dev, "CHECK_CLEAR_STATUS returned %x\n", buffer[0]);
		rv = -EPERM;
		goto exit;
	}

	if ((buffer[1] & 1) != 0) {
		do {
			FUNC0(dev, "Reading from bulk in EP\n");

			actual = 0;
			rv = FUNC6(data->usb_dev,
					  FUNC9(data->usb_dev,
							  data->bulk_in),
					  buffer, USBTMC_BUFSIZE,
					  &actual, USB_CTRL_GET_TIMEOUT);

			FUNC5("usbtmc ", DUMP_PREFIX_NONE,
					     16, 1, buffer, actual, true);

			n++;

			if (rv < 0) {
				FUNC1(dev, "usb_control_msg returned %d\n",
					rv);
				goto exit;
			}
		} while ((actual == USBTMC_BUFSIZE) &&
			  (n < USBTMC_MAX_READS_TO_CLEAR_BULK_IN));
	} else {
		/* do not stress device with subsequent requests */
		FUNC4(50);
		n++;
	}

	if (n >= USBTMC_MAX_READS_TO_CLEAR_BULK_IN) {
		FUNC1(dev, "Couldn't clear device buffer within %d cycles\n",
			USBTMC_MAX_READS_TO_CLEAR_BULK_IN);
		rv = -EPERM;
		goto exit;
	}

	goto usbtmc_clear_check_status;

usbtmc_clear_bulk_out_halt:

	rv = FUNC7(data->usb_dev,
			    FUNC11(data->usb_dev, data->bulk_out));
	if (rv < 0) {
		FUNC1(dev, "usb_clear_halt returned %d\n", rv);
		goto exit;
	}
	rv = 0;

exit:
	FUNC2(buffer);
	return rv;
}