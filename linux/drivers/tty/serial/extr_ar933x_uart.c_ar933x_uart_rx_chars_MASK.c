#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct tty_port {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  rx; } ;
struct TYPE_6__ {int ignore_status_mask; int /*<<< orphan*/  lock; TYPE_2__ icount; TYPE_1__* state; } ;
struct ar933x_uart_port {TYPE_3__ port; } ;
struct TYPE_4__ {struct tty_port port; } ;

/* Variables and functions */
 int AR933X_DUMMY_STATUS_RD ; 
 int /*<<< orphan*/  AR933X_UART_DATA_REG ; 
 unsigned int AR933X_UART_DATA_RX_CSR ; 
 unsigned int AR933X_UART_DATA_TX_RX_MASK ; 
 int /*<<< orphan*/  TTY_NORMAL ; 
 unsigned int FUNC0 (struct ar933x_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar933x_uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_3__*,unsigned char) ; 

__attribute__((used)) static void FUNC7(struct ar933x_uart_port *up)
{
	struct tty_port *port = &up->port.state->port;
	int max_count = 256;

	do {
		unsigned int rdata;
		unsigned char ch;

		rdata = FUNC0(up, AR933X_UART_DATA_REG);
		if ((rdata & AR933X_UART_DATA_RX_CSR) == 0)
			break;

		/* remove the character from the FIFO */
		FUNC1(up, AR933X_UART_DATA_REG,
				  AR933X_UART_DATA_RX_CSR);

		up->port.icount.rx++;
		ch = rdata & AR933X_UART_DATA_TX_RX_MASK;

		if (FUNC6(&up->port, ch))
			continue;

		if ((up->port.ignore_status_mask & AR933X_DUMMY_STATUS_RD) == 0)
			FUNC5(port, ch, TTY_NORMAL);
	} while (max_count-- > 0);

	FUNC3(&up->port.lock);
	FUNC4(port);
	FUNC2(&up->port.lock);
}