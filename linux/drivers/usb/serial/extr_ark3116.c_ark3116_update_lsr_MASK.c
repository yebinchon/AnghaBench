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
struct TYPE_2__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  frame; int /*<<< orphan*/  brk; } ;
struct usb_serial_port {TYPE_1__ icount; } ;
struct ark3116_private {int lsr; int /*<<< orphan*/  status_lock; } ;
typedef  int __u8 ;

/* Variables and functions */
 int UART_LSR_BI ; 
 int UART_LSR_BRK_ERROR_BITS ; 
 int UART_LSR_FE ; 
 int UART_LSR_OE ; 
 int UART_LSR_PE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ark3116_private* FUNC2 (struct usb_serial_port*) ; 

__attribute__((used)) static void FUNC3(struct usb_serial_port *port, __u8 lsr)
{
	struct ark3116_private *priv = FUNC2(port);
	unsigned long flags;

	FUNC0(&priv->status_lock, flags);
	/* combine bits */
	priv->lsr |= lsr;
	FUNC1(&priv->status_lock, flags);

	if (lsr&UART_LSR_BRK_ERROR_BITS) {
		if (lsr & UART_LSR_BI)
			port->icount.brk++;
		if (lsr & UART_LSR_FE)
			port->icount.frame++;
		if (lsr & UART_LSR_PE)
			port->icount.parity++;
		if (lsr & UART_LSR_OE)
			port->icount.overrun++;
	}
}