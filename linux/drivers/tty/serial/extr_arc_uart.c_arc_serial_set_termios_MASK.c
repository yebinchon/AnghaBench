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
struct uart_port {int uartclk; int /*<<< orphan*/  lock; } ;
struct ktermios {int c_cflag; } ;
struct arc_uart_port {int baud; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
 int CS8 ; 
 int CSIZE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct arc_uart_port* FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC8 (struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC9 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC10 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC12(struct uart_port *port, struct ktermios *new,
		       struct ktermios *old)
{
	struct arc_uart_port *uart = FUNC6(port);
	unsigned int baud, uartl, uarth, hw_val;
	unsigned long flags;

	/*
	 * Use the generic handler so that any specially encoded baud rates
	 * such as SPD_xx flags or "%B0" can be handled
	 * Max Baud I suppose will not be more than current 115K * 4
	 * Formula for ARC UART is: hw-val = ((CLK/(BAUD*4)) -1)
	 * spread over two 8-bit registers
	 */
	baud = FUNC10(port, new, old, 0, 460800);

	hw_val = port->uartclk / (uart->baud * 4) - 1;
	uartl = hw_val & 0xFF;
	uarth = (hw_val >> 8) & 0xFF;

	FUNC4(&port->lock, flags);

	FUNC0(port);

	FUNC3(port, uartl);
	FUNC2(port, uarth);

	FUNC1(port);

	/*
	 * UART doesn't support Parity/Hardware Flow Control;
	 * Only supports 8N1 character size
	 */
	new->c_cflag &= ~(CMSPAR|CRTSCTS|CSIZE);
	new->c_cflag |= CS8;

	if (old)
		FUNC8(new, old);

	/* Don't rewrite B0 */
	if (FUNC7(new))
		FUNC9(new, baud, baud);

	FUNC11(port, new->c_cflag, baud);

	FUNC5(&port->lock, flags);
}