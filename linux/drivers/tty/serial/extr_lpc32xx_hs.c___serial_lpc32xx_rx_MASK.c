#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  rx; } ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; TYPE_1__ icount; TYPE_2__* state; } ;
struct tty_port {int dummy; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int LPC32XX_HSU_ERROR_DATA ; 
 int /*<<< orphan*/  LPC32XX_HSU_FE_INT ; 
 unsigned int LPC32XX_HSU_RX_EMPTY ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port)
{
	struct tty_port *tport = &port->state->port;
	unsigned int tmp, flag;

	/* Read data from FIFO and push into terminal */
	tmp = FUNC2(FUNC0(port->membase));
	while (!(tmp & LPC32XX_HSU_RX_EMPTY)) {
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (tmp & LPC32XX_HSU_ERROR_DATA) {
			/* Framing error */
			FUNC7(LPC32XX_HSU_FE_INT,
			       FUNC1(port->membase));
			port->icount.frame++;
			flag = TTY_FRAME;
			FUNC6(tport, 0, TTY_FRAME);
		}

		FUNC6(tport, (tmp & 0xFF), flag);

		tmp = FUNC2(FUNC0(port->membase));
	}

	FUNC4(&port->lock);
	FUNC5(tport);
	FUNC3(&port->lock);
}