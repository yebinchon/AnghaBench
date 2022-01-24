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
struct uart_port {unsigned int uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 unsigned int RX_HFC_THLD_DEF ; 
 unsigned int RX_HW_FLOW_CTL_EN ; 
 unsigned int RX_HW_FLOW_CTL_THLD ; 
 unsigned int RX_TOUT_THLD_DEF ; 
 int /*<<< orphan*/  SPRD_BAUD_IO_LIMIT ; 
 int /*<<< orphan*/  SPRD_CLKD0 ; 
 unsigned int SPRD_CLKD0_MASK ; 
 int /*<<< orphan*/  SPRD_CLKD1 ; 
 unsigned int SPRD_CLKD1_MASK ; 
 unsigned int SPRD_CLKD1_SHIFT ; 
 int /*<<< orphan*/  SPRD_CTL1 ; 
 int /*<<< orphan*/  SPRD_LCR ; 
 unsigned int SPRD_LCR_DATA_LEN5 ; 
 unsigned int SPRD_LCR_DATA_LEN6 ; 
 unsigned int SPRD_LCR_DATA_LEN7 ; 
 unsigned int SPRD_LCR_DATA_LEN8 ; 
 unsigned int SPRD_LCR_EVEN_PAR ; 
 unsigned int SPRD_LCR_ODD_PAR ; 
 unsigned int SPRD_LCR_PARITY ; 
 unsigned int SPRD_LCR_PARITY_EN ; 
 unsigned int SPRD_LCR_STOP_1BIT ; 
 unsigned int SPRD_LCR_STOP_2BIT ; 
 int SPRD_LSR_BI ; 
 int SPRD_LSR_FE ; 
 int SPRD_LSR_OE ; 
 int SPRD_LSR_PE ; 
 unsigned int TX_HW_FLOW_CTL_EN ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC4 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC5 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port,
			     struct ktermios *termios,
			     struct ktermios *old)
{
	unsigned int baud, quot;
	unsigned int lcr = 0, fc;
	unsigned long flags;

	/* ask the core to calculate the divisor for us */
	baud = FUNC6(port, termios, old, 0, SPRD_BAUD_IO_LIMIT);

	quot = port->uartclk / baud;

	/* set data length */
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		lcr |= SPRD_LCR_DATA_LEN5;
		break;
	case CS6:
		lcr |= SPRD_LCR_DATA_LEN6;
		break;
	case CS7:
		lcr |= SPRD_LCR_DATA_LEN7;
		break;
	case CS8:
	default:
		lcr |= SPRD_LCR_DATA_LEN8;
		break;
	}

	/* calculate stop bits */
	lcr &= ~(SPRD_LCR_STOP_1BIT | SPRD_LCR_STOP_2BIT);
	if (termios->c_cflag & CSTOPB)
		lcr |= SPRD_LCR_STOP_2BIT;
	else
		lcr |= SPRD_LCR_STOP_1BIT;

	/* calculate parity */
	lcr &= ~SPRD_LCR_PARITY;
	termios->c_cflag &= ~CMSPAR;	/* no support mark/space */
	if (termios->c_cflag & PARENB) {
		lcr |= SPRD_LCR_PARITY_EN;
		if (termios->c_cflag & PARODD)
			lcr |= SPRD_LCR_ODD_PAR;
		else
			lcr |= SPRD_LCR_EVEN_PAR;
	}

	FUNC2(&port->lock, flags);

	/* update the per-port timeout */
	FUNC7(port, termios->c_cflag, baud);

	port->read_status_mask = SPRD_LSR_OE;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= SPRD_LSR_FE | SPRD_LSR_PE;
	if (termios->c_iflag & (IGNBRK | BRKINT | PARMRK))
		port->read_status_mask |= SPRD_LSR_BI;

	/* characters to ignore */
	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= SPRD_LSR_PE | SPRD_LSR_FE;
	if (termios->c_iflag & IGNBRK) {
		port->ignore_status_mask |= SPRD_LSR_BI;
		/*
		 * If we're ignoring parity and break indicators,
		 * ignore overruns too (for real raw support).
		 */
		if (termios->c_iflag & IGNPAR)
			port->ignore_status_mask |= SPRD_LSR_OE;
	}

	/* flow control */
	fc = FUNC0(port, SPRD_CTL1);
	fc &= ~(RX_HW_FLOW_CTL_THLD | RX_HW_FLOW_CTL_EN | TX_HW_FLOW_CTL_EN);
	if (termios->c_cflag & CRTSCTS) {
		fc |= RX_HW_FLOW_CTL_THLD;
		fc |= RX_HW_FLOW_CTL_EN;
		fc |= TX_HW_FLOW_CTL_EN;
	}

	/* clock divider bit0~bit15 */
	FUNC1(port, SPRD_CLKD0, quot & SPRD_CLKD0_MASK);

	/* clock divider bit16~bit20 */
	FUNC1(port, SPRD_CLKD1,
		   (quot & SPRD_CLKD1_MASK) >> SPRD_CLKD1_SHIFT);
	FUNC1(port, SPRD_LCR, lcr);
	fc |= RX_TOUT_THLD_DEF | RX_HFC_THLD_DEF;
	FUNC1(port, SPRD_CTL1, fc);

	FUNC3(&port->lock, flags);

	/* Don't rewrite B0 */
	if (FUNC4(termios))
		FUNC5(termios, baud, baud);
}