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
typedef  int /*<<< orphan*/  u8 ;
struct usb_serial_port {int /*<<< orphan*/  dev; TYPE_1__* serial; } ;
struct usb_device {int dummy; } ;
struct spcp8x5_private {int quirks; } ;
struct TYPE_2__ {struct usb_device* dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int EPERM ; 
 int /*<<< orphan*/  GET_UART_STATUS ; 
 int /*<<< orphan*/  GET_UART_STATUS_MSR ; 
 int /*<<< orphan*/  GET_UART_STATUS_TYPE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int SPCP825_QUIRK_NO_UART_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 struct spcp8x5_private* FUNC5 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct usb_serial_port *port, u8 *status)
{
	struct spcp8x5_private *priv = FUNC5(port);
	struct usb_device *dev = port->serial->dev;
	u8 *buf;
	int ret;

	if (priv->quirks & SPCP825_QUIRK_NO_UART_STATUS)
		return -EPERM;

	buf = FUNC3(1, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	ret = FUNC4(dev, FUNC6(dev, 0),
			      GET_UART_STATUS, GET_UART_STATUS_TYPE,
			      0, GET_UART_STATUS_MSR, buf, 1, 100);
	if (ret < 1) {
		FUNC1(&port->dev, "failed to get modem status: %d\n", ret);
		if (ret >= 0)
			ret = -EIO;
		goto out;
	}

	FUNC0(&port->dev, "0xc0:0x22:0:6  %d - 0x02%x\n", ret, *buf);
	*status = *buf;
	ret = 0;
out:
	FUNC2(buf);

	return ret;
}