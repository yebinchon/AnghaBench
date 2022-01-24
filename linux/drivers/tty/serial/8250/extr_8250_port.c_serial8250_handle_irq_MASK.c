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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct uart_8250_port {int ier; TYPE_1__* dma; } ;
struct TYPE_2__ {scalar_t__ tx_err; } ;

/* Variables and functions */
 int UART_IER_THRI ; 
 unsigned int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_BI ; 
 unsigned char UART_LSR_DR ; 
 unsigned char UART_LSR_THRE ; 
 scalar_t__ FUNC0 (struct uart_8250_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 unsigned char FUNC2 (struct uart_8250_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 unsigned char FUNC4 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned long) ; 
 struct uart_8250_port* FUNC7 (struct uart_port*) ; 

int FUNC8(struct uart_port *port, unsigned int iir)
{
	unsigned char status;
	unsigned long flags;
	struct uart_8250_port *up = FUNC7(port);

	if (iir & UART_IIR_NO_INT)
		return 0;

	FUNC5(&port->lock, flags);

	status = FUNC4(port, UART_LSR);

	if (status & (UART_LSR_DR | UART_LSR_BI)) {
		if (!up->dma || FUNC0(up, iir))
			status = FUNC2(up, status);
	}
	FUNC1(up);
	if ((!up->dma || up->dma->tx_err) && (status & UART_LSR_THRE) &&
		(up->ier & UART_IER_THRI))
		FUNC3(up);

	FUNC6(port, flags);
	return 1;
}