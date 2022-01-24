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
struct uart_port {int read_status_mask; int ignore_status_mask; int uartclk; int /*<<< orphan*/  dev; } ;
struct sc16is7xx_port {int /*<<< orphan*/  efr_lock; int /*<<< orphan*/  regmap; } ;
struct ktermios {int c_cflag; int c_iflag; unsigned int* c_cc; } ;

/* Variables and functions */
 int BRKINT ; 
 int CMSPAR ; 
 int CREAD ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 int IGNBRK ; 
 int INPCK ; 
 int IXOFF ; 
 int IXON ; 
 int PARENB ; 
 int PARMRK ; 
 int PARODD ; 
 unsigned int SC16IS7XX_EFR_AUTOCTS_BIT ; 
 unsigned int SC16IS7XX_EFR_AUTORTS_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_EFR_REG ; 
 unsigned int SC16IS7XX_EFR_SWFLOW1_BIT ; 
 unsigned int SC16IS7XX_EFR_SWFLOW3_BIT ; 
 unsigned int SC16IS7XX_LCR_CONF_MODE_B ; 
 unsigned int SC16IS7XX_LCR_EVENPARITY_BIT ; 
 unsigned int SC16IS7XX_LCR_PARITY_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_LCR_REG ; 
 unsigned int SC16IS7XX_LCR_STOPLEN_BIT ; 
 unsigned int SC16IS7XX_LCR_WORD_LEN_5 ; 
 unsigned int SC16IS7XX_LCR_WORD_LEN_6 ; 
 unsigned int SC16IS7XX_LCR_WORD_LEN_7 ; 
 unsigned int SC16IS7XX_LCR_WORD_LEN_8 ; 
 int SC16IS7XX_LSR_BI_BIT ; 
 int SC16IS7XX_LSR_BRK_ERROR_MASK ; 
 int SC16IS7XX_LSR_FE_BIT ; 
 int SC16IS7XX_LSR_OE_BIT ; 
 int SC16IS7XX_LSR_PE_BIT ; 
 int /*<<< orphan*/  SC16IS7XX_XOFF1_REG ; 
 int /*<<< orphan*/  SC16IS7XX_XON1_REG ; 
 size_t VSTART ; 
 size_t VSTOP ; 
 struct sc16is7xx_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int FUNC5 (struct uart_port*,int) ; 
 int FUNC6 (struct uart_port*,struct ktermios*,struct ktermios*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct uart_port*,int,int) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port,
				  struct ktermios *termios,
				  struct ktermios *old)
{
	struct sc16is7xx_port *s = FUNC0(port->dev);
	unsigned int lcr, flow = 0;
	int baud;

	/* Mask termios capabilities we don't support */
	termios->c_cflag &= ~CMSPAR;

	/* Word size */
	switch (termios->c_cflag & CSIZE) {
	case CS5:
		lcr = SC16IS7XX_LCR_WORD_LEN_5;
		break;
	case CS6:
		lcr = SC16IS7XX_LCR_WORD_LEN_6;
		break;
	case CS7:
		lcr = SC16IS7XX_LCR_WORD_LEN_7;
		break;
	case CS8:
		lcr = SC16IS7XX_LCR_WORD_LEN_8;
		break;
	default:
		lcr = SC16IS7XX_LCR_WORD_LEN_8;
		termios->c_cflag &= ~CSIZE;
		termios->c_cflag |= CS8;
		break;
	}

	/* Parity */
	if (termios->c_cflag & PARENB) {
		lcr |= SC16IS7XX_LCR_PARITY_BIT;
		if (!(termios->c_cflag & PARODD))
			lcr |= SC16IS7XX_LCR_EVENPARITY_BIT;
	}

	/* Stop bits */
	if (termios->c_cflag & CSTOPB)
		lcr |= SC16IS7XX_LCR_STOPLEN_BIT; /* 2 stops */

	/* Set read status mask */
	port->read_status_mask = SC16IS7XX_LSR_OE_BIT;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= SC16IS7XX_LSR_PE_BIT |
					  SC16IS7XX_LSR_FE_BIT;
	if (termios->c_iflag & (BRKINT | PARMRK))
		port->read_status_mask |= SC16IS7XX_LSR_BI_BIT;

	/* Set status ignore mask */
	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNBRK)
		port->ignore_status_mask |= SC16IS7XX_LSR_BI_BIT;
	if (!(termios->c_cflag & CREAD))
		port->ignore_status_mask |= SC16IS7XX_LSR_BRK_ERROR_MASK;

	/* As above, claim the mutex while accessing the EFR. */
	FUNC1(&s->efr_lock);

	FUNC4(port, SC16IS7XX_LCR_REG,
			     SC16IS7XX_LCR_CONF_MODE_B);

	/* Configure flow control */
	FUNC3(s->regmap, true);
	FUNC4(port, SC16IS7XX_XON1_REG, termios->c_cc[VSTART]);
	FUNC4(port, SC16IS7XX_XOFF1_REG, termios->c_cc[VSTOP]);
	if (termios->c_cflag & CRTSCTS)
		flow |= SC16IS7XX_EFR_AUTOCTS_BIT |
			SC16IS7XX_EFR_AUTORTS_BIT;
	if (termios->c_iflag & IXON)
		flow |= SC16IS7XX_EFR_SWFLOW3_BIT;
	if (termios->c_iflag & IXOFF)
		flow |= SC16IS7XX_EFR_SWFLOW1_BIT;

	FUNC4(port, SC16IS7XX_EFR_REG, flow);
	FUNC3(s->regmap, false);

	/* Update LCR register */
	FUNC4(port, SC16IS7XX_LCR_REG, lcr);

	FUNC2(&s->efr_lock);

	/* Get baud rate generator configuration */
	baud = FUNC6(port, termios, old,
				  port->uartclk / 16 / 4 / 0xffff,
				  port->uartclk / 16);

	/* Setup baudrate generator */
	baud = FUNC5(port, baud);

	/* Update timeout according to new baud rate */
	FUNC7(port, termios->c_cflag, baud);
}