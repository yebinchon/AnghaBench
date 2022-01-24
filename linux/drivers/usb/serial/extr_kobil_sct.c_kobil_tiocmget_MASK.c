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
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
struct tty_struct {struct usb_serial_port* driver_data; } ;
struct kobil_private {scalar_t__ device_type; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ KOBIL_KAAN_SIM_PRODUCT_ID ; 
 int /*<<< orphan*/  KOBIL_TIMEOUT ; 
 scalar_t__ KOBIL_USBTWIN_PRODUCT_ID ; 
 unsigned char SUSBCR_GSL_DSR ; 
 int /*<<< orphan*/  SUSBCRequest_GetStatusLineState ; 
 int TIOCM_DSR ; 
 int USB_DIR_IN ; 
 int USB_RECIP_ENDPOINT ; 
 int USB_TYPE_VENDOR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int,int /*<<< orphan*/ ) ; 
 struct kobil_private* FUNC4 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct tty_struct *tty)
{
	struct usb_serial_port *port = tty->driver_data;
	struct kobil_private *priv;
	int result;
	unsigned char *transfer_buffer;
	int transfer_buffer_length = 8;

	priv = FUNC4(port);
	if (priv->device_type == KOBIL_USBTWIN_PRODUCT_ID
			|| priv->device_type == KOBIL_KAAN_SIM_PRODUCT_ID) {
		/* This device doesn't support ioctl calls */
		return -EINVAL;
	}

	/* allocate memory for transfer buffer */
	transfer_buffer = FUNC2(transfer_buffer_length, GFP_KERNEL);
	if (!transfer_buffer)
		return -ENOMEM;

	result = FUNC3(port->serial->dev,
			  FUNC5(port->serial->dev, 0),
			  SUSBCRequest_GetStatusLineState,
			  USB_TYPE_VENDOR | USB_RECIP_ENDPOINT | USB_DIR_IN,
			  0,
			  0,
			  transfer_buffer,
			  transfer_buffer_length,
			  KOBIL_TIMEOUT);

	FUNC0(&port->dev, "Send get_status_line_state URB returns: %i\n",
			result);
	if (result < 1) {
		if (result >= 0)
			result = -EIO;
		goto out_free;
	}

	FUNC0(&port->dev, "Statusline: %02x\n", transfer_buffer[0]);

	result = 0;
	if ((transfer_buffer[0] & SUSBCR_GSL_DSR) != 0)
		result = TIOCM_DSR;
out_free:
	FUNC1(transfer_buffer);
	return result;
}