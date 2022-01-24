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
struct uart_port {int dummy; } ;
struct uart_pmac_port {int* curregs; int /*<<< orphan*/  flags; int /*<<< orphan*/  port; int /*<<< orphan*/  termios_cache; } ;
struct ktermios {int /*<<< orphan*/  c_cflag; int /*<<< orphan*/  c_iflag; } ;

/* Variables and functions */
 int CTSIE ; 
 int DCDIE ; 
 int /*<<< orphan*/  PMACZILOG_FLAG_MODEM_STATUS ; 
 size_t R15 ; 
 int SYNCIE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ktermios*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_pmac_port*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_pmac_port*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_pmac_port*) ; 
 struct uart_pmac_port* FUNC8 (struct uart_port*) ; 
 unsigned long FUNC9 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC12(struct uart_port *port, struct ktermios *termios,
			      struct ktermios *old)
{
	struct uart_pmac_port *uap = FUNC8(port);
	unsigned long baud;

	FUNC4("pmz: set_termios()\n");

	FUNC2(&uap->termios_cache, termios, sizeof(struct ktermios));

	/* XXX Check which revs of machines actually allow 1 and 4Mb speeds
	 * on the IR dongle. Note that the IRTTY driver currently doesn't know
	 * about the FIR mode and high speed modes. So these are unused. For
	 * implementing proper support for these, we should probably add some
	 * DMA as well, at least on the Rx side, which isn't a simple thing
	 * at this point.
	 */
	if (FUNC1(uap)) {
		/* Calc baud rate */
		baud = FUNC9(port, termios, old, 1200, 4000000);
		FUNC4("pmz: switch IRDA to %ld bauds\n", baud);
		/* Cet the irda codec to the right rate */
		FUNC5(uap, &baud);
		/* Set final baud rate */
		FUNC3(uap, termios->c_cflag, termios->c_iflag, baud);
		FUNC6(uap, uap->curregs);
		FUNC11(uap);
	} else {
		baud = FUNC9(port, termios, old, 1200, 230400);
		FUNC3(uap, termios->c_cflag, termios->c_iflag, baud);
		/* Make sure modem status interrupts are correctly configured */
		if (FUNC0(&uap->port, termios->c_cflag)) {
			uap->curregs[R15] |= DCDIE | SYNCIE | CTSIE;
			uap->flags |= PMACZILOG_FLAG_MODEM_STATUS;
		} else {
			uap->curregs[R15] &= ~(DCDIE | SYNCIE | CTSIE);
			uap->flags &= ~PMACZILOG_FLAG_MODEM_STATUS;
		}

		/* Load registers to the chip */
		FUNC7(uap);
	}
	FUNC10(port, termios->c_cflag, baud);

	FUNC4("pmz: set_termios() done.\n");
}