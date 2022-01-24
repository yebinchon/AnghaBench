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
struct TYPE_2__ {int read_status_mask; int ignore_status_mask; int flags; int /*<<< orphan*/  lock; int /*<<< orphan*/  mctrl; } ;
struct uart_txx9_port {TYPE_1__ port; } ;
struct uart_port {int uartclk; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CLOCAL ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int HUPCL ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int TXX9_SIDISR_RDIS ; 
 int TXX9_SIDISR_TDIS ; 
 int TXX9_SIDISR_UBRK ; 
 int TXX9_SIDISR_UFER ; 
 int TXX9_SIDISR_UOER ; 
 int TXX9_SIDISR_UPER ; 
 int /*<<< orphan*/  TXX9_SIFCR ; 
 unsigned int TXX9_SIFCR_RDIL_1 ; 
 unsigned int TXX9_SIFCR_TDIL_MAX ; 
 int /*<<< orphan*/  TXX9_SIFLCR ; 
 int TXX9_SIFLCR_RCS ; 
 int TXX9_SIFLCR_TES ; 
 int /*<<< orphan*/  TXX9_SILCR ; 
 unsigned int TXX9_SILCR_UEPS ; 
 unsigned int TXX9_SILCR_UMODE_7BIT ; 
 unsigned int TXX9_SILCR_UMODE_8BIT ; 
 unsigned int TXX9_SILCR_UMODE_MASK ; 
 unsigned int TXX9_SILCR_UPEN ; 
 unsigned int TXX9_SILCR_USBL_1BIT ; 
 unsigned int TXX9_SILCR_USBL_2BIT ; 
 unsigned int TXX9_SILCR_USBL_MASK ; 
 int UPF_TXX9_HAVE_CTS_LINE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (struct uart_txx9_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_txx9_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_txx9_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_txx9_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_txx9_port* FUNC8 (struct uart_port*) ; 
 unsigned int FUNC9 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC10 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC12(struct uart_port *port, struct ktermios *termios,
		       struct ktermios *old)
{
	struct uart_txx9_port *up = FUNC8(port);
	unsigned int cval, fcr = 0;
	unsigned long flags;
	unsigned int baud, quot;

	/*
	 * We don't support modem control lines.
	 */
	termios->c_cflag &= ~(HUPCL | CMSPAR);
	termios->c_cflag |= CLOCAL;

	cval = FUNC1(up, TXX9_SILCR);
	/* byte size and parity */
	cval &= ~TXX9_SILCR_UMODE_MASK;
	switch (termios->c_cflag & CSIZE) {
	case CS7:
		cval |= TXX9_SILCR_UMODE_7BIT;
		break;
	default:
	case CS5:	/* not supported */
	case CS6:	/* not supported */
	case CS8:
		cval |= TXX9_SILCR_UMODE_8BIT;
		break;
	}

	cval &= ~TXX9_SILCR_USBL_MASK;
	if (termios->c_cflag & CSTOPB)
		cval |= TXX9_SILCR_USBL_2BIT;
	else
		cval |= TXX9_SILCR_USBL_1BIT;
	cval &= ~(TXX9_SILCR_UPEN | TXX9_SILCR_UEPS);
	if (termios->c_cflag & PARENB)
		cval |= TXX9_SILCR_UPEN;
	if (!(termios->c_cflag & PARODD))
		cval |= TXX9_SILCR_UEPS;

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC9(port, termios, old, 0, port->uartclk/16/2);
	quot = FUNC10(port, baud);

	/* Set up FIFOs */
	/* TX Int by FIFO Empty, RX Int by Receiving 1 char. */
	fcr = TXX9_SIFCR_TDIL_MAX | TXX9_SIFCR_RDIL_1;

	/*
	 * Ok, we're now changing the port state.  Do it with
	 * interrupts disabled.
	 */
	FUNC6(&up->port.lock, flags);

	/*
	 * Update the per-port timeout.
	 */
	FUNC11(port, termios->c_cflag, baud);

	up->port.read_status_mask = TXX9_SIDISR_UOER |
		TXX9_SIDISR_TDIS | TXX9_SIDISR_RDIS;
	if (termios->c_iflag & INPCK)
		up->port.read_status_mask |= TXX9_SIDISR_UFER | TXX9_SIDISR_UPER;
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
		up->port.read_status_mask |= TXX9_SIDISR_UBRK;

	/*
	 * Characteres to ignore
	 */
	up->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		up->port.ignore_status_mask |= TXX9_SIDISR_UPER | TXX9_SIDISR_UFER;
	if (termios->c_iflag & IGNBRK) {
		up->port.ignore_status_mask |= TXX9_SIDISR_UBRK;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			up->port.ignore_status_mask |= TXX9_SIDISR_UOER;
	}

	/*
	 * ignore all characters if CREAD is not set
	 */
	if ((termios->c_cflag & CREAD) == 0)
		up->port.ignore_status_mask |= TXX9_SIDISR_RDIS;

	/* CTS flow control flag */
	if ((termios->c_cflag & CRTSCTS) &&
	    (up->port.flags & UPF_TXX9_HAVE_CTS_LINE)) {
		FUNC5(up, TXX9_SIFLCR,
			TXX9_SIFLCR_RCS | TXX9_SIFLCR_TES);
	} else {
		FUNC2(up, TXX9_SIFLCR,
			 TXX9_SIFLCR_RCS | TXX9_SIFLCR_TES);
	}

	FUNC3(up, TXX9_SILCR, cval);
	FUNC4(up, quot);
	FUNC3(up, TXX9_SIFCR, fcr);

	FUNC0(&up->port, up->port.mctrl);
	FUNC7(&up->port.lock, flags);
}