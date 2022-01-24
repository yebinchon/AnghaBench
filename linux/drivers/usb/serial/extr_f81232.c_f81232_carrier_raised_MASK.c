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
struct usb_serial_port {int dummy; } ;
struct f81232_private {int modem_status; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int UART_MSR_DCD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct f81232_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static int FUNC3(struct usb_serial_port *port)
{
	u8 msr;
	struct f81232_private *priv = FUNC2(port);

	FUNC0(&priv->lock);
	msr = priv->modem_status;
	FUNC1(&priv->lock);

	if (msr & UART_MSR_DCD)
		return 1;
	return 0;
}