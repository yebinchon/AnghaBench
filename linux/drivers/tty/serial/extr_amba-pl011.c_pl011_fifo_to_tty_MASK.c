#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u16 ;
struct TYPE_5__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct TYPE_6__ {unsigned int read_status_mask; TYPE_1__ icount; } ;
struct uart_amba_port {TYPE_2__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  REG_DR ; 
 int /*<<< orphan*/  REG_FR ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_PARITY ; 
 unsigned int UART011_DR_BE ; 
 unsigned int UART011_DR_FE ; 
 unsigned int UART011_DR_OE ; 
 unsigned int UART011_DR_PE ; 
 int UART01x_FR_RXFE ; 
 unsigned int UART_DR_ERROR ; 
 int UART_DUMMY_DR_RX ; 
 int FUNC0 (struct uart_amba_port*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,unsigned int,unsigned int,unsigned int,unsigned int) ; 
 scalar_t__ FUNC4 (unsigned int) ; 

__attribute__((used)) static int FUNC5(struct uart_amba_port *uap)
{
	u16 status;
	unsigned int ch, flag, fifotaken;

	for (fifotaken = 0; fifotaken != 256; fifotaken++) {
		status = FUNC0(uap, REG_FR);
		if (status & UART01x_FR_RXFE)
			break;

		/* Take chars from the FIFO and update status */
		ch = FUNC0(uap, REG_DR) | UART_DUMMY_DR_RX;
		flag = TTY_NORMAL;
		uap->port.icount.rx++;

		if (FUNC4(ch & UART_DR_ERROR)) {
			if (ch & UART011_DR_BE) {
				ch &= ~(UART011_DR_FE | UART011_DR_PE);
				uap->port.icount.brk++;
				if (FUNC1(&uap->port))
					continue;
			} else if (ch & UART011_DR_PE)
				uap->port.icount.parity++;
			else if (ch & UART011_DR_FE)
				uap->port.icount.frame++;
			if (ch & UART011_DR_OE)
				uap->port.icount.overrun++;

			ch &= uap->port.read_status_mask;

			if (ch & UART011_DR_BE)
				flag = TTY_BREAK;
			else if (ch & UART011_DR_PE)
				flag = TTY_PARITY;
			else if (ch & UART011_DR_FE)
				flag = TTY_FRAME;
		}

		if (FUNC2(&uap->port, ch & 255))
			continue;

		FUNC3(&uap->port, ch, UART011_DR_OE, ch, flag);
	}

	return fifotaken;
}