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
 int EPERM ; 
 int /*<<< orphan*/  SET_UART_STATUS ; 
 int /*<<< orphan*/  SET_UART_STATUS_TYPE ; 
 int SPCP825_QUIRK_NO_UART_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 struct spcp8x5_private* FUNC2 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct usb_serial_port *port, u8 mcr)
{
	struct spcp8x5_private *priv = FUNC2(port);
	struct usb_device *dev = port->serial->dev;
	int retval;

	if (priv->quirks & SPCP825_QUIRK_NO_UART_STATUS)
		return -EPERM;

	retval = FUNC1(dev, FUNC3(dev, 0),
				 SET_UART_STATUS_TYPE, SET_UART_STATUS,
				 mcr, 0x04, NULL, 0, 100);
	if (retval != 0) {
		FUNC0(&port->dev, "failed to set control lines: %d\n",
								retval);
	}
	return retval;
}