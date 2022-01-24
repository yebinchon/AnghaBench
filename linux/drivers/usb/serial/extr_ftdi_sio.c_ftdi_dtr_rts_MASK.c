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
struct ftdi_private {int /*<<< orphan*/  interface; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FTDI_SIO_SET_FLOW_CTRL_REQUEST ; 
 int /*<<< orphan*/  FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE ; 
 int TIOCM_DTR ; 
 int TIOCM_RTS ; 
 int /*<<< orphan*/  WDR_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct usb_serial_port*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_serial_port*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ftdi_private* FUNC4 (struct usb_serial_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct usb_serial_port *port, int on)
{
	struct ftdi_private *priv = FUNC4(port);

	/* Disable flow control */
	if (!on) {
		if (FUNC3(port->serial->dev,
			    FUNC5(port->serial->dev, 0),
			    FTDI_SIO_SET_FLOW_CTRL_REQUEST,
			    FTDI_SIO_SET_FLOW_CTRL_REQUEST_TYPE,
			    0, priv->interface, NULL, 0,
			    WDR_TIMEOUT) < 0) {
			FUNC1(&port->dev, "error from flowcontrol urb\n");
		}
	}
	/* drop RTS and DTR */
	if (on)
		FUNC2(port, TIOCM_DTR | TIOCM_RTS);
	else
		FUNC0(port, TIOCM_DTR | TIOCM_RTS);
}