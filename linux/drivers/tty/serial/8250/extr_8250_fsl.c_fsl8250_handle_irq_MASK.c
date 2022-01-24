#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct uart_port {unsigned int (* serial_in ) (struct uart_port*,int /*<<< orphan*/ ) ;TYPE_1__* ops; } ;
struct TYPE_5__ {unsigned char (* serial_in ) (TYPE_2__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  lock; } ;
struct uart_8250_port {unsigned char lsr_saved_flags; int ier; scalar_t__ overrun_backoff_time_ms; TYPE_2__ port; int /*<<< orphan*/  overrun_backoff; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* stop_rx ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_RDI ; 
 int UART_IER_RLSI ; 
 int /*<<< orphan*/  UART_IIR ; 
 unsigned int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_BI ; 
 unsigned char UART_LSR_DR ; 
 unsigned char UART_LSR_OE ; 
 unsigned char UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_RX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 unsigned char FUNC4 (struct uart_8250_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC8 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct uart_port*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC11 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,unsigned long) ; 
 scalar_t__ FUNC14 (unsigned char) ; 
 struct uart_8250_port* FUNC15 (struct uart_port*) ; 

int FUNC16(struct uart_port *port)
{
	unsigned char lsr, orig_lsr;
	unsigned long flags;
	unsigned int iir;
	struct uart_8250_port *up = FUNC15(port);

	FUNC6(&up->port.lock, flags);

	iir = port->serial_in(port, UART_IIR);
	if (iir & UART_IIR_NO_INT) {
		FUNC7(&up->port.lock, flags);
		return 0;
	}

	/* This is the WAR; if last event was BRK, then read and return */
	if (FUNC14(up->lsr_saved_flags & UART_LSR_BI)) {
		up->lsr_saved_flags &= ~UART_LSR_BI;
		port->serial_in(port, UART_RX);
		FUNC7(&up->port.lock, flags);
		return 1;
	}

	lsr = orig_lsr = up->port.serial_in(&up->port, UART_LSR);

	/* Process incoming characters first */
	if ((lsr & (UART_LSR_DR | UART_LSR_BI)) &&
	    (up->ier & (UART_IER_RLSI | UART_IER_RDI))) {
		lsr = FUNC4(up, lsr);
	}

	/* Stop processing interrupts on input overrun */
	if ((orig_lsr & UART_LSR_OE) && (up->overrun_backoff_time_ms > 0)) {
		unsigned long delay;

		up->ier = port->serial_in(port, UART_IER);
		if (up->ier & (UART_IER_RLSI | UART_IER_RDI)) {
			port->ops->stop_rx(port);
		} else {
			/* Keep restarting the timer until
			 * the input overrun subsides.
			 */
			FUNC0(&up->overrun_backoff);
		}

		delay = FUNC1(up->overrun_backoff_time_ms);
		FUNC2(&up->overrun_backoff, delay);
	}

	FUNC3(up);

	if (lsr & UART_LSR_THRE)
		FUNC5(up);

	up->lsr_saved_flags = orig_lsr;
	FUNC13(&up->port, flags);
	return 1;
}