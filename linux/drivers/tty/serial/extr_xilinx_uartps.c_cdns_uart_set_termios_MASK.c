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
struct uart_port {int uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; int /*<<< orphan*/  dev; } ;
struct ktermios {int c_cflag; int c_iflag; } ;

/* Variables and functions */
 int CDNS_UART_BDIV_MAX ; 
 int CDNS_UART_BDIV_MIN ; 
 int CDNS_UART_CD_MAX ; 
 scalar_t__ CDNS_UART_CR ; 
 unsigned int CDNS_UART_CR_RXRST ; 
 unsigned int CDNS_UART_CR_RX_DIS ; 
 unsigned int CDNS_UART_CR_RX_EN ; 
 unsigned int CDNS_UART_CR_TXRST ; 
 unsigned int CDNS_UART_CR_TX_DIS ; 
 unsigned int CDNS_UART_CR_TX_EN ; 
 int CDNS_UART_IXR_FRAMING ; 
 int CDNS_UART_IXR_OVERRUN ; 
 int CDNS_UART_IXR_PARITY ; 
 int CDNS_UART_IXR_RXTRIG ; 
 int CDNS_UART_IXR_TOUT ; 
 int CDNS_UART_IXR_TXEMPTY ; 
 scalar_t__ CDNS_UART_MR ; 
 unsigned int CDNS_UART_MR_CHARLEN_6_BIT ; 
 unsigned int CDNS_UART_MR_CHARLEN_7_BIT ; 
 unsigned int CDNS_UART_MR_CHARLEN_8_BIT ; 
 unsigned int CDNS_UART_MR_PARITY_EVEN ; 
 unsigned int CDNS_UART_MR_PARITY_MARK ; 
 unsigned int CDNS_UART_MR_PARITY_NONE ; 
 unsigned int CDNS_UART_MR_PARITY_ODD ; 
 unsigned int CDNS_UART_MR_PARITY_SPACE ; 
 unsigned int CDNS_UART_MR_STOPMODE_1_BIT ; 
 unsigned int CDNS_UART_MR_STOPMODE_2_BIT ; 
 scalar_t__ CDNS_UART_RXTOUT ; 
 scalar_t__ CDNS_UART_SR ; 
 unsigned int CDNS_UART_SR_TXEMPTY ; 
 int CMSPAR ; 
 int CREAD ; 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNPAR ; 
 int INPCK ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  TX_TIMEOUT ; 
 unsigned int FUNC0 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 int FUNC4 (scalar_t__,unsigned int,unsigned int,int,int /*<<< orphan*/ ) ; 
 unsigned int rx_timeout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC7 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC8 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC9 (struct uart_port*,struct ktermios*,struct ktermios*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC10 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC12(struct uart_port *port,
				struct ktermios *termios, struct ktermios *old)
{
	unsigned int cval = 0;
	unsigned int baud, minbaud, maxbaud;
	unsigned long flags;
	unsigned int ctrl_reg, mode_reg, val;
	int err;

	/* Wait for the transmit FIFO to empty before making changes */
	if (!(FUNC3(port->membase + CDNS_UART_CR) &
				CDNS_UART_CR_TX_DIS)) {
		err = FUNC4(port->membase + CDNS_UART_SR,
					 val, (val & CDNS_UART_SR_TXEMPTY),
					 1000, TX_TIMEOUT);
		if (err) {
			FUNC2(port->dev, "timed out waiting for tx empty");
			return;
		}
	}
	FUNC5(&port->lock, flags);

	/* Disable the TX and RX to set baud rate */
	ctrl_reg = FUNC3(port->membase + CDNS_UART_CR);
	ctrl_reg |= CDNS_UART_CR_TX_DIS | CDNS_UART_CR_RX_DIS;
	FUNC11(ctrl_reg, port->membase + CDNS_UART_CR);

	/*
	 * Min baud rate = 6bps and Max Baud Rate is 10Mbps for 100Mhz clk
	 * min and max baud should be calculated here based on port->uartclk.
	 * this way we get a valid baud and can safely call set_baud()
	 */
	minbaud = port->uartclk /
			((CDNS_UART_BDIV_MAX + 1) * CDNS_UART_CD_MAX * 8);
	maxbaud = port->uartclk / (CDNS_UART_BDIV_MIN + 1);
	baud = FUNC9(port, termios, old, minbaud, maxbaud);
	baud = FUNC0(port, baud);
	if (FUNC7(termios))
		FUNC8(termios, baud, baud);

	/* Update the per-port timeout. */
	FUNC10(port, termios->c_cflag, baud);

	/* Set TX/RX Reset */
	ctrl_reg = FUNC3(port->membase + CDNS_UART_CR);
	ctrl_reg |= CDNS_UART_CR_TXRST | CDNS_UART_CR_RXRST;
	FUNC11(ctrl_reg, port->membase + CDNS_UART_CR);

	while (FUNC3(port->membase + CDNS_UART_CR) &
		(CDNS_UART_CR_TXRST | CDNS_UART_CR_RXRST))
		FUNC1();

	/*
	 * Clear the RX disable and TX disable bits and then set the TX enable
	 * bit and RX enable bit to enable the transmitter and receiver.
	 */
	ctrl_reg = FUNC3(port->membase + CDNS_UART_CR);
	ctrl_reg &= ~(CDNS_UART_CR_TX_DIS | CDNS_UART_CR_RX_DIS);
	ctrl_reg |= CDNS_UART_CR_TX_EN | CDNS_UART_CR_RX_EN;
	FUNC11(ctrl_reg, port->membase + CDNS_UART_CR);

	FUNC11(rx_timeout, port->membase + CDNS_UART_RXTOUT);

	port->read_status_mask = CDNS_UART_IXR_TXEMPTY | CDNS_UART_IXR_RXTRIG |
			CDNS_UART_IXR_OVERRUN | CDNS_UART_IXR_TOUT;
	port->ignore_status_mask = 0;

	if (termios->c_iflag & INPCK)
		port->read_status_mask |= CDNS_UART_IXR_PARITY |
		CDNS_UART_IXR_FRAMING;

	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= CDNS_UART_IXR_PARITY |
			CDNS_UART_IXR_FRAMING | CDNS_UART_IXR_OVERRUN;

	/* ignore all characters if CREAD is not set */
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= CDNS_UART_IXR_RXTRIG |
			CDNS_UART_IXR_TOUT | CDNS_UART_IXR_PARITY |
			CDNS_UART_IXR_FRAMING | CDNS_UART_IXR_OVERRUN;

	mode_reg = FUNC3(port->membase + CDNS_UART_MR);

	/* Handling Data Size */
	switch (termios->c_cflag & CSIZE) {
	case CS6:
		cval |= CDNS_UART_MR_CHARLEN_6_BIT;
		break;
	case CS7:
		cval |= CDNS_UART_MR_CHARLEN_7_BIT;
		break;
	default:
	case CS8:
		cval |= CDNS_UART_MR_CHARLEN_8_BIT;
		termios->c_cflag &= ~CSIZE;
		termios->c_cflag |= CS8;
		break;
	}

	/* Handling Parity and Stop Bits length */
	if (termios->c_cflag & CSTOPB)
		cval |= CDNS_UART_MR_STOPMODE_2_BIT; /* 2 STOP bits */
	else
		cval |= CDNS_UART_MR_STOPMODE_1_BIT; /* 1 STOP bit */

	if (termios->c_cflag & PARENB) {
		/* Mark or Space parity */
		if (termios->c_cflag & CMSPAR) {
			if (termios->c_cflag & PARODD)
				cval |= CDNS_UART_MR_PARITY_MARK;
			else
				cval |= CDNS_UART_MR_PARITY_SPACE;
		} else {
			if (termios->c_cflag & PARODD)
				cval |= CDNS_UART_MR_PARITY_ODD;
			else
				cval |= CDNS_UART_MR_PARITY_EVEN;
		}
	} else {
		cval |= CDNS_UART_MR_PARITY_NONE;
	}
	cval |= mode_reg & 1;
	FUNC11(cval, port->membase + CDNS_UART_MR);

	FUNC6(&port->lock, flags);
}