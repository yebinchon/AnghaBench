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
typedef  int u16 ;
struct TYPE_4__ {int /*<<< orphan*/  overrun; int /*<<< orphan*/  frame; int /*<<< orphan*/  parity; int /*<<< orphan*/  brk; int /*<<< orphan*/  rx; } ;
struct uart_port {int read_status_mask; scalar_t__ sysrq; TYPE_2__ icount; int /*<<< orphan*/  dev; TYPE_1__* state; } ;
struct uart_qe_port {struct qe_bd* rx_cur; struct qe_bd* rx_bd_base; struct uart_port port; } ;
struct tty_port {int dummy; } ;
struct qe_bd {int /*<<< orphan*/  status; int /*<<< orphan*/  buf; int /*<<< orphan*/  length; } ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 int BD_SC_BR ; 
 int BD_SC_EMPTY ; 
 int BD_SC_FR ; 
 int BD_SC_ID ; 
 int BD_SC_OV ; 
 int BD_SC_PR ; 
 int BD_SC_WRAP ; 
 unsigned int TTY_BREAK ; 
 unsigned int TTY_FRAME ; 
 unsigned int TTY_NORMAL ; 
 unsigned int TTY_OVERRUN ; 
 unsigned int TTY_PARITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ ,struct uart_qe_port*) ; 
 int FUNC4 (struct tty_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct tty_port*,unsigned char,unsigned int) ; 
 scalar_t__ FUNC7 (struct uart_port*,unsigned char) ; 

__attribute__((used)) static void FUNC8(struct uart_qe_port *qe_port)
{
	int i;
	unsigned char ch, *cp;
	struct uart_port *port = &qe_port->port;
	struct tty_port *tport = &port->state->port;
	struct qe_bd *bdp;
	u16 status;
	unsigned int flg;

	/* Just loop through the closed BDs and copy the characters into
	 * the buffer.
	 */
	bdp = qe_port->rx_cur;
	while (1) {
		status = FUNC2(&bdp->status);

		/* If this one is empty, then we assume we've read them all */
		if (status & BD_SC_EMPTY)
			break;

		/* get number of characters, and check space in RX buffer */
		i = FUNC2(&bdp->length);

		/* If we don't have enough room in RX buffer for the entire BD,
		 * then we try later, which will be the next RX interrupt.
		 */
		if (FUNC4(tport, i) < i) {
			FUNC1(port->dev, "ucc-uart: no room in RX buffer\n");
			return;
		}

		/* get pointer */
		cp = FUNC3(bdp->buf, qe_port);

		/* loop through the buffer */
		while (i-- > 0) {
			ch = *cp++;
			port->icount.rx++;
			flg = TTY_NORMAL;

			if (!i && status &
			    (BD_SC_BR | BD_SC_FR | BD_SC_PR | BD_SC_OV))
				goto handle_error;
			if (FUNC7(port, ch))
				continue;

error_return:
			FUNC6(tport, ch, flg);

		}

		/* This BD is ready to be used again. Clear status. get next */
		FUNC0(&bdp->status, BD_SC_BR | BD_SC_FR | BD_SC_PR |
			BD_SC_OV | BD_SC_ID, BD_SC_EMPTY);
		if (FUNC2(&bdp->status) & BD_SC_WRAP)
			bdp = qe_port->rx_bd_base;
		else
			bdp++;

	}

	/* Write back buffer pointer */
	qe_port->rx_cur = bdp;

	/* Activate BH processing */
	FUNC5(tport);

	return;

	/* Error processing */

handle_error:
	/* Statistics */
	if (status & BD_SC_BR)
		port->icount.brk++;
	if (status & BD_SC_PR)
		port->icount.parity++;
	if (status & BD_SC_FR)
		port->icount.frame++;
	if (status & BD_SC_OV)
		port->icount.overrun++;

	/* Mask out ignored conditions */
	status &= port->read_status_mask;

	/* Handle the remaining ones */
	if (status & BD_SC_BR)
		flg = TTY_BREAK;
	else if (status & BD_SC_PR)
		flg = TTY_PARITY;
	else if (status & BD_SC_FR)
		flg = TTY_FRAME;

	/* Overrun does not affect the current character ! */
	if (status & BD_SC_OV)
		FUNC6(tport, 0, TTY_OVERRUN);
#ifdef SUPPORT_SYSRQ
	port->sysrq = 0;
#endif
	goto error_return;
}