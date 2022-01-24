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
typedef  unsigned int u32 ;
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  uartclk; } ;
struct mvebu_uart {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 unsigned int BRDV_BAUD_MASK ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int OSAMP_DEFAULT_DIVISOR ; 
 unsigned int OSAMP_DIVISORS_MASK ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ UART_BRDV ; 
 scalar_t__ UART_OSAMP ; 
 unsigned int FUNC3 (scalar_t__) ; 
 struct mvebu_uart* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct uart_port *port, unsigned int baud)
{
	struct mvebu_uart *mvuart = FUNC4(port);
	unsigned int d_divisor, m_divisor;
	u32 brdv, osamp;

	if (FUNC1(mvuart->clk))
		return -FUNC2(mvuart->clk);

	/*
	 * The baudrate is derived from the UART clock thanks to two divisors:
	 *   > D ("baud generator"): can divide the clock from 2 to 2^10 - 1.
	 *   > M ("fractional divisor"): allows a better accuracy for
	 *     baudrates higher than 230400.
	 *
	 * As the derivation of M is rather complicated, the code sticks to its
	 * default value (x16) when all the prescalers are zeroed, and only
	 * makes use of D to configure the desired baudrate.
	 */
	m_divisor = OSAMP_DEFAULT_DIVISOR;
	d_divisor = FUNC0(port->uartclk, baud * m_divisor);

	brdv = FUNC3(port->membase + UART_BRDV);
	brdv &= ~BRDV_BAUD_MASK;
	brdv |= d_divisor;
	FUNC5(brdv, port->membase + UART_BRDV);

	osamp = FUNC3(port->membase + UART_OSAMP);
	osamp &= ~OSAMP_DIVISORS_MASK;
	FUNC5(osamp, port->membase + UART_OSAMP);

	return 0;
}