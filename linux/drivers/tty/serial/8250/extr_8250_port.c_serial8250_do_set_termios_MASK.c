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
struct uart_port {int fifosize; int read_status_mask; int ignore_status_mask; int flags; scalar_t__ type; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;
struct uart_8250_port {int capabilities; unsigned char lcr; int fcr; int ier; int bugs; int /*<<< orphan*/  port; int /*<<< orphan*/  mcr; scalar_t__ fifo_bug; int /*<<< orphan*/  dma; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
 int CS5 ; 
 int CS6 ; 
 int CS7 ; 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 scalar_t__ PORT_16750 ; 
 int UART_BUG_NOMSR ; 
 int UART_CAP_AFE ; 
 int UART_CAP_EFR ; 
 int UART_CAP_FIFO ; 
 int UART_CAP_MINI ; 
 int UART_CAP_RTOIE ; 
 int UART_CAP_UUE ; 
 int /*<<< orphan*/  UART_EFR ; 
 unsigned char UART_EFR_CTS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  UART_FCR ; 
 int UART_FCR_ENABLE_FIFO ; 
 int UART_FCR_TRIGGER_1 ; 
 int UART_FCR_TRIGGER_MASK ; 
 int /*<<< orphan*/  UART_IER ; 
 int UART_IER_MSI ; 
 int UART_IER_RTOIE ; 
 int UART_IER_UUE ; 
 int /*<<< orphan*/  UART_LCR ; 
 int UART_LCR_CONF_MODE_B ; 
 int UART_LSR_BI ; 
 int UART_LSR_DR ; 
 int UART_LSR_FE ; 
 int UART_LSR_OE ; 
 int UART_LSR_PE ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  UART_MCR_AFE ; 
 int /*<<< orphan*/  UART_XR_EFR ; 
 int UPF_EXAR_EFR ; 
 unsigned char FUNC1 (struct uart_8250_port*,int) ; 
 unsigned int FUNC2 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 unsigned int FUNC3 (struct uart_port*,unsigned int,unsigned int*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC11 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC12 (struct ktermios*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC13 (struct uart_port*,int,unsigned int) ; 
 struct uart_8250_port* FUNC14 (struct uart_port*) ; 

void
FUNC15(struct uart_port *port, struct ktermios *termios,
			  struct ktermios *old)
{
	struct uart_8250_port *up = FUNC14(port);
	unsigned char cval;
	unsigned long flags;
	unsigned int baud, quot, frac = 0;

	if (up->capabilities & UART_CAP_MINI) {
		termios->c_cflag &= ~(CSTOPB | PARENB | PARODD | CMSPAR);
		if ((termios->c_cflag & CSIZE) == CS5 ||
		    (termios->c_cflag & CSIZE) == CS6)
			termios->c_cflag = (termios->c_cflag & ~CSIZE) | CS7;
	}
	cval = FUNC1(up, termios->c_cflag);

	baud = FUNC2(port, termios, old);
	quot = FUNC3(port, baud, &frac);

	/*
	 * Ok, we're now changing the port state.  Do it with
	 * interrupts disabled.
	 */
	FUNC4(up);
	FUNC9(&port->lock, flags);

	up->lcr = cval;					/* Save computed LCR */

	if (up->capabilities & UART_CAP_FIFO && port->fifosize > 1) {
		/* NOTE: If fifo_bug is not set, a user can set RX_trigger. */
		if ((baud < 2400 && !up->dma) || up->fifo_bug) {
			up->fcr &= ~UART_FCR_TRIGGER_MASK;
			up->fcr |= UART_FCR_TRIGGER_1;
		}
	}

	/*
	 * MCR-based auto flow control.  When AFE is enabled, RTS will be
	 * deasserted when the receive FIFO contains more characters than
	 * the trigger, or the MCR RTS bit is cleared.
	 */
	if (up->capabilities & UART_CAP_AFE) {
		up->mcr &= ~UART_MCR_AFE;
		if (termios->c_cflag & CRTSCTS)
			up->mcr |= UART_MCR_AFE;
	}

	/*
	 * Update the per-port timeout.
	 */
	FUNC13(port, termios->c_cflag, baud);

	port->read_status_mask = UART_LSR_OE | UART_LSR_THRE | UART_LSR_DR;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= UART_LSR_FE | UART_LSR_PE;
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
		port->read_status_mask |= UART_LSR_BI;

	/*
	 * Characteres to ignore
	 */
	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= UART_LSR_PE | UART_LSR_FE;
	if (termios->c_iflag & IGNBRK) {
		port->ignore_status_mask |= UART_LSR_BI;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |= UART_LSR_OE;
	}

	/*
	 * ignore all characters if CREAD is not set
	 */
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= UART_LSR_DR;

	/*
	 * CTS flow control flag and modem status interrupts
	 */
	up->ier &= ~UART_IER_MSI;
	if (!(up->bugs & UART_BUG_NOMSR) &&
			FUNC0(&up->port, termios->c_cflag))
		up->ier |= UART_IER_MSI;
	if (up->capabilities & UART_CAP_UUE)
		up->ier |= UART_IER_UUE;
	if (up->capabilities & UART_CAP_RTOIE)
		up->ier |= UART_IER_RTOIE;

	FUNC8(port, UART_IER, up->ier);

	if (up->capabilities & UART_CAP_EFR) {
		unsigned char efr = 0;
		/*
		 * TI16C752/Startech hardware flow control.  FIXME:
		 * - TI16C752 requires control thresholds to be set.
		 * - UART_MCR_RTS is ineffective if auto-RTS mode is enabled.
		 */
		if (termios->c_cflag & CRTSCTS)
			efr |= UART_EFR_CTS;

		FUNC8(port, UART_LCR, UART_LCR_CONF_MODE_B);
		if (port->flags & UPF_EXAR_EFR)
			FUNC8(port, UART_XR_EFR, efr);
		else
			FUNC8(port, UART_EFR, efr);
	}

	FUNC6(port, baud, quot, frac);

	/*
	 * LCR DLAB must be set to enable 64-byte FIFO mode. If the FCR
	 * is written without DLAB set, this mode will be disabled.
	 */
	if (port->type == PORT_16750)
		FUNC8(port, UART_FCR, up->fcr);

	FUNC8(port, UART_LCR, up->lcr);	/* reset DLAB */
	if (port->type != PORT_16750) {
		/* emulated UARTs (Lucent Venus 167x) need two steps */
		if (up->fcr & UART_FCR_ENABLE_FIFO)
			FUNC8(port, UART_FCR, UART_FCR_ENABLE_FIFO);
		FUNC8(port, UART_FCR, up->fcr);	/* set fcr */
	}
	FUNC7(port, port->mctrl);
	FUNC10(&port->lock, flags);
	FUNC5(up);

	/* Don't rewrite B0 */
	if (FUNC11(termios))
		FUNC12(termios, baud, baud);
}