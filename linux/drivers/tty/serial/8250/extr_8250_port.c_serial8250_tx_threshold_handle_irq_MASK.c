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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_ID ; 
 unsigned int UART_IIR_THRI ; 
 int FUNC0 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 unsigned int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port)
{
	unsigned long flags;
	unsigned int iir = FUNC2(port, UART_IIR);

	/* TX Threshold IRQ triggered so load up FIFO */
	if ((iir & UART_IIR_ID) == UART_IIR_THRI) {
		struct uart_8250_port *up = FUNC5(port);

		FUNC3(&port->lock, flags);
		FUNC1(up);
		FUNC4(&port->lock, flags);
	}

	iir = FUNC2(port, UART_IIR);
	return FUNC0(port, iir);
}