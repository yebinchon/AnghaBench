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
struct TYPE_3__ {int /*<<< orphan*/  frame; int /*<<< orphan*/  overrun; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {unsigned short read_status_mask; int /*<<< orphan*/  lock; TYPE_2__* state; TYPE_1__ icount; } ;
struct altera_uart {struct uart_port port; } ;
struct TYPE_4__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  ALTERA_UART_RXDATA_REG ; 
 unsigned short ALTERA_UART_STATUS_BRK_MSK ; 
 unsigned short ALTERA_UART_STATUS_E_MSK ; 
 unsigned short ALTERA_UART_STATUS_FE_MSK ; 
 unsigned short ALTERA_UART_STATUS_PE_MSK ; 
 int /*<<< orphan*/  ALTERA_UART_STATUS_REG ; 
 unsigned short ALTERA_UART_STATUS_ROE_MSK ; 
 unsigned short ALTERA_UART_STATUS_RRDY_MSK ; 
 unsigned char TTY_BREAK ; 
 unsigned char TTY_FRAME ; 
 unsigned char TTY_NORMAL ; 
 unsigned char TTY_PARITY ; 
 void* FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned short,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 scalar_t__ FUNC6 (struct uart_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,unsigned short,unsigned short,unsigned char,unsigned char) ; 

__attribute__((used)) static void FUNC8(struct altera_uart *pp)
{
	struct uart_port *port = &pp->port;
	unsigned char ch, flag;
	unsigned short status;

	while ((status = FUNC0(port, ALTERA_UART_STATUS_REG)) &
	       ALTERA_UART_STATUS_RRDY_MSK) {
		ch = FUNC0(port, ALTERA_UART_RXDATA_REG);
		flag = TTY_NORMAL;
		port->icount.rx++;

		if (status & ALTERA_UART_STATUS_E_MSK) {
			FUNC1(port, status,
					   ALTERA_UART_STATUS_REG);

			if (status & ALTERA_UART_STATUS_BRK_MSK) {
				port->icount.brk++;
				if (FUNC5(port))
					continue;
			} else if (status & ALTERA_UART_STATUS_PE_MSK) {
				port->icount.parity++;
			} else if (status & ALTERA_UART_STATUS_ROE_MSK) {
				port->icount.overrun++;
			} else if (status & ALTERA_UART_STATUS_FE_MSK) {
				port->icount.frame++;
			}

			status &= port->read_status_mask;

			if (status & ALTERA_UART_STATUS_BRK_MSK)
				flag = TTY_BREAK;
			else if (status & ALTERA_UART_STATUS_PE_MSK)
				flag = TTY_PARITY;
			else if (status & ALTERA_UART_STATUS_FE_MSK)
				flag = TTY_FRAME;
		}

		if (FUNC6(port, ch))
			continue;
		FUNC7(port, status, ALTERA_UART_STATUS_ROE_MSK, ch,
				 flag);
	}

	FUNC3(&port->lock);
	FUNC4(&port->state->port);
	FUNC2(&port->lock);
}