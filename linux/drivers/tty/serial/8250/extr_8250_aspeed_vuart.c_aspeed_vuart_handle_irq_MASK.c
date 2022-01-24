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
struct uart_port {TYPE_1__* state; struct aspeed_vuart* private_data; int /*<<< orphan*/  lock; } ;
struct uart_8250_port {int dummy; } ;
struct aspeed_vuart {int /*<<< orphan*/  unthrottle_timer; struct uart_8250_port* port; } ;
struct TYPE_2__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned int UART_LSR_BI ; 
 unsigned int UART_LSR_DR ; 
 unsigned int UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*,int) ; 
 scalar_t__ jiffies ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 unsigned int FUNC6 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,unsigned long) ; 
 scalar_t__ unthrottle_timeout ; 
 struct uart_8250_port* FUNC13 (struct uart_port*) ; 

__attribute__((used)) static int FUNC14(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC13(port);
	unsigned int iir, lsr;
	unsigned long flags;
	int space, count;

	iir = FUNC7(port, UART_IIR);

	if (iir & UART_IIR_NO_INT)
		return 0;

	FUNC8(&port->lock, flags);

	lsr = FUNC7(port, UART_LSR);

	if (lsr & (UART_LSR_DR | UART_LSR_BI)) {
		space = FUNC10(&port->state->port);

		if (!space) {
			/* throttle and schedule an unthrottle later */
			struct aspeed_vuart *vuart = port->private_data;
			FUNC0(up, true);

			if (!FUNC9(&vuart->unthrottle_timer)) {
				vuart->port = up;
				FUNC2(&vuart->unthrottle_timer,
					  jiffies + unthrottle_timeout);
			}

		} else {
			count = FUNC1(space, 256);

			do {
				FUNC4(up, lsr);
				lsr = FUNC6(up, UART_LSR);
				if (--count == 0)
					break;
			} while (lsr & (UART_LSR_DR | UART_LSR_BI));

			FUNC11(&port->state->port);
		}
	}

	FUNC3(up);
	if (lsr & UART_LSR_THRE)
		FUNC5(up);

	FUNC12(port, flags);

	return 1;
}