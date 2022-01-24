#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int c_lflag; int /*<<< orphan*/  c_oflag; } ;
struct tty_struct {TYPE_1__ termios; } ;
struct fwtty_port {unsigned int cps; int write_only; scalar_t__ loopback; int /*<<< orphan*/  ignore_mask; int /*<<< orphan*/  status_mask; } ;

/* Variables and functions */
 int BRKINT ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int /*<<< orphan*/  FUNC0 (struct tty_struct*) ; 
 int FUNC1 (struct tty_struct*) ; 
 scalar_t__ FUNC2 (struct tty_struct*) ; 
 scalar_t__ FUNC3 (struct tty_struct*) ; 
 int ECHO ; 
 int ECHOCTL ; 
 int ECHOE ; 
 int ECHOK ; 
 int ECHOKE ; 
 int ECHONL ; 
 int ECHOPRT ; 
 scalar_t__ FUNC4 (struct tty_struct*) ; 
 scalar_t__ FUNC5 (struct tty_struct*) ; 
 int /*<<< orphan*/  ONLCR ; 
 int PARMRK ; 
 int /*<<< orphan*/  UART_LSR_BI ; 
 int /*<<< orphan*/  UART_LSR_OE ; 
 scalar_t__ FUNC6 (struct tty_struct*,int) ; 
 unsigned int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,unsigned int,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC9(struct fwtty_port *port, struct tty_struct *tty)
{
	unsigned int baud, frame;

	baud = FUNC7(&tty->termios);
	FUNC8(&tty->termios, baud, baud);

	/* compute bit count of 2 frames */
	frame = 12 + ((FUNC2(tty)) ? 4 : 2) + ((FUNC3(tty)) ? 2 : 0);

	switch (FUNC1(tty)) {
	case CS5:
		frame -= (FUNC2(tty)) ? 1 : 0;
		break;
	case CS6:
		frame += 2;
		break;
	case CS7:
		frame += 4;
		break;
	case CS8:
		frame += 6;
		break;
	}

	port->cps = (baud << 1) / frame;

	port->status_mask = UART_LSR_OE;
	if (FUNC6(tty, BRKINT | PARMRK))
		port->status_mask |= UART_LSR_BI;

	port->ignore_mask = 0;
	if (FUNC4(tty)) {
		port->ignore_mask |= UART_LSR_BI;
		if (FUNC5(tty))
			port->ignore_mask |= UART_LSR_OE;
	}

	port->write_only = !FUNC0(tty);

	/* turn off echo and newline xlat if loopback */
	if (port->loopback) {
		tty->termios.c_lflag &= ~(ECHO | ECHOE | ECHOK | ECHOKE |
					  ECHONL | ECHOPRT | ECHOCTL);
		tty->termios.c_oflag &= ~ONLCR;
	}

	return baud;
}