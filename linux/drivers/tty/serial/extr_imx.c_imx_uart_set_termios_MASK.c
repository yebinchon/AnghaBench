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
typedef  unsigned long uint64_t ;
typedef  int u32 ;
struct TYPE_4__ {int flags; } ;
struct uart_port {int uartclk; TYPE_1__ rs485; } ;
struct ktermios {unsigned int c_cflag; int c_iflag; } ;
struct TYPE_5__ {int read_status_mask; int ignore_status_mask; unsigned int uartclk; int /*<<< orphan*/  lock; } ;
struct imx_port {TYPE_2__ port; int /*<<< orphan*/  have_rtscts; int /*<<< orphan*/  timer; } ;
typedef  int /*<<< orphan*/  speed_t ;

/* Variables and functions */
 int BRKINT ; 
 int CREAD ; 
 int CRTSCTS ; 
 unsigned int CS7 ; 
 unsigned int CS8 ; 
 unsigned int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int /*<<< orphan*/  IMX21_ONEMS ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 int SER_RS485_ENABLED ; 
 int SER_RS485_RTS_AFTER_SEND ; 
 scalar_t__ FUNC0 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  UBIR ; 
 int /*<<< orphan*/  UBMR ; 
 int /*<<< orphan*/  UCR2 ; 
 int UCR2_ATEN ; 
 int UCR2_CTS ; 
 int UCR2_CTSC ; 
 int UCR2_IRTS ; 
 int UCR2_PREN ; 
 int UCR2_PROE ; 
 int UCR2_RXEN ; 
 int UCR2_SRST ; 
 int UCR2_STPB ; 
 int UCR2_TXEN ; 
 int UCR2_WS ; 
 int /*<<< orphan*/  UFCR ; 
 int UFCR_RFDIV ; 
 int FUNC1 (unsigned long) ; 
 int URXD_BRK ; 
 int URXD_DUMMY_READ ; 
 int URXD_FRMERR ; 
 int URXD_OVRRUN ; 
 int URXD_PRERR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct imx_port*) ; 
 void* FUNC6 (struct imx_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC8 (struct imx_port*,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct imx_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,unsigned int,int,int,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC13 (struct ktermios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC14 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 unsigned int FUNC15 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC16 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void
FUNC17(struct uart_port *port, struct ktermios *termios,
		     struct ktermios *old)
{
	struct imx_port *sport = (struct imx_port *)port;
	unsigned long flags;
	u32 ucr2, old_ucr2, ufcr;
	unsigned int baud, quot;
	unsigned int old_csize = old ? old->c_cflag & CSIZE : CS8;
	unsigned long div;
	unsigned long num, denom, old_ubir, old_ubmr;
	uint64_t tdiv64;

	/*
	 * We only support CS7 and CS8.
	 */
	while ((termios->c_cflag & CSIZE) != CS7 &&
	       (termios->c_cflag & CSIZE) != CS8) {
		termios->c_cflag &= ~CSIZE;
		termios->c_cflag |= old_csize;
		old_csize = CS8;
	}

	FUNC2(&sport->timer);

	/*
	 * Ask the core to calculate the divisor for us.
	 */
	baud = FUNC14(port, termios, old, 50, port->uartclk / 16);
	quot = FUNC15(port, baud);

	FUNC11(&sport->port.lock, flags);

	/*
	 * Read current UCR2 and save it for future use, then clear all the bits
	 * except those we will or may need to preserve.
	 */
	old_ucr2 = FUNC6(sport, UCR2);
	ucr2 = old_ucr2 & (UCR2_TXEN | UCR2_RXEN | UCR2_ATEN | UCR2_CTS);

	ucr2 |= UCR2_SRST | UCR2_IRTS;
	if ((termios->c_cflag & CSIZE) == CS8)
		ucr2 |= UCR2_WS;

	if (!sport->have_rtscts)
		termios->c_cflag &= ~CRTSCTS;

	if (port->rs485.flags & SER_RS485_ENABLED) {
		/*
		 * RTS is mandatory for rs485 operation, so keep
		 * it under manual control and keep transmitter
		 * disabled.
		 */
		if (port->rs485.flags & SER_RS485_RTS_AFTER_SEND)
			FUNC7(sport, &ucr2);
		else
			FUNC8(sport, &ucr2);

	} else if (termios->c_cflag & CRTSCTS) {
		/*
		 * Only let receiver control RTS output if we were not requested
		 * to have RTS inactive (which then should take precedence).
		 */
		if (ucr2 & UCR2_CTS)
			ucr2 |= UCR2_CTSC;
	}

	if (termios->c_cflag & CRTSCTS)
		ucr2 &= ~UCR2_IRTS;

	if (termios->c_cflag & CSTOPB)
		ucr2 |= UCR2_STPB;
	if (termios->c_cflag & PARENB) {
		ucr2 |= UCR2_PREN;
		if (termios->c_cflag & PARODD)
			ucr2 |= UCR2_PROE;
	}

	sport->port.read_status_mask = 0;
	if (termios->c_iflag & INPCK)
		sport->port.read_status_mask |= (URXD_FRMERR | URXD_PRERR);
	if (termios->c_iflag & (BRKINT | PARMRK))
		sport->port.read_status_mask |= URXD_BRK;

	/*
	 * Characters to ignore
	 */
	sport->port.ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		sport->port.ignore_status_mask |= URXD_PRERR | URXD_FRMERR;
	if (termios->c_iflag & IGNBRK) {
		sport->port.ignore_status_mask |= URXD_BRK;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			sport->port.ignore_status_mask |= URXD_OVRRUN;
	}

	if ((termios->c_cflag & CREAD) == 0)
		sport->port.ignore_status_mask |= URXD_DUMMY_READ;

	/*
	 * Update the per-port timeout.
	 */
	FUNC16(port, termios->c_cflag, baud);

	/* custom-baudrate handling */
	div = sport->port.uartclk / (baud * 16);
	if (baud == 38400 && quot != div)
		baud = sport->port.uartclk / (quot * 16);

	div = sport->port.uartclk / (baud * 16);
	if (div > 7)
		div = 7;
	if (!div)
		div = 1;

	FUNC10(16 * div * baud, sport->port.uartclk,
		1 << 16, 1 << 16, &num, &denom);

	tdiv64 = sport->port.uartclk;
	tdiv64 *= num;
	FUNC3(tdiv64, denom * 16 * div);
	FUNC13(termios,
				(speed_t)tdiv64, (speed_t)tdiv64);

	num -= 1;
	denom -= 1;

	ufcr = FUNC6(sport, UFCR);
	ufcr = (ufcr & (~UFCR_RFDIV)) | FUNC1(div);
	FUNC9(sport, ufcr, UFCR);

	/*
	 *  Two registers below should always be written both and in this
	 *  particular order. One consequence is that we need to check if any of
	 *  them changes and then update both. We do need the check for change
	 *  as even writing the same values seem to "restart"
	 *  transmission/receiving logic in the hardware, that leads to data
	 *  breakage even when rate doesn't in fact change. E.g., user switches
	 *  RTS/CTS handshake and suddenly gets broken bytes.
	 */
	old_ubir = FUNC6(sport, UBIR);
	old_ubmr = FUNC6(sport, UBMR);
	if (old_ubir != num || old_ubmr != denom) {
		FUNC9(sport, num, UBIR);
		FUNC9(sport, denom, UBMR);
	}

	if (!FUNC5(sport))
		FUNC9(sport, sport->port.uartclk / div / 1000,
				IMX21_ONEMS);

	FUNC9(sport, ucr2, UCR2);

	if (FUNC0(&sport->port, termios->c_cflag))
		FUNC4(&sport->port);

	FUNC12(&sport->port.lock, flags);
}