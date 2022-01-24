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
struct uart_port {int uartclk; int /*<<< orphan*/  lock; int /*<<< orphan*/  ignore_status_mask; } ;
struct rp2_uart_port {int dummy; } ;
struct ktermios {int c_cflag; int /*<<< orphan*/  c_iflag; } ;

/* Variables and functions */
 int CREAD ; 
 int /*<<< orphan*/  RP2_DUMMY_READ ; 
 int /*<<< orphan*/  FUNC0 (struct rp2_uart_port*,int,int /*<<< orphan*/ ,unsigned int) ; 
 struct rp2_uart_port* FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC7 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port,
				 struct ktermios *new,
				 struct ktermios *old)
{
	struct rp2_uart_port *up = FUNC1(port);
	unsigned long flags;
	unsigned int baud, baud_div;

	baud = FUNC6(port, new, old, 0, port->uartclk / 16);
	baud_div = FUNC7(port, baud);

	if (FUNC4(new))
		FUNC5(new, baud, baud);

	FUNC2(&port->lock, flags);

	/* ignore all characters if CREAD is not set */
	port->ignore_status_mask = (new->c_cflag & CREAD) ? 0 : RP2_DUMMY_READ;

	FUNC0(up, new->c_cflag, new->c_iflag, baud_div);
	FUNC8(port, new->c_cflag, baud);

	FUNC3(&port->lock, flags);
}