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
struct uart_port {int uartclk; int /*<<< orphan*/  lock; } ;
struct pic32_sport {scalar_t__ hw_flow_ctrl; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
 int CS8 ; 
 int CSTOPB ; 
 int PARENB ; 
 int PARODD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PIC32_UART_BRG ; 
 int /*<<< orphan*/  PIC32_UART_MODE ; 
 unsigned int PIC32_UART_MODE_PDSEL0 ; 
 unsigned int PIC32_UART_MODE_PDSEL1 ; 
 unsigned int PIC32_UART_MODE_RTSMD ; 
 unsigned int PIC32_UART_MODE_STSEL ; 
 unsigned int PIC32_UART_MODE_UEN0 ; 
 unsigned int PIC32_UART_MODE_UEN1 ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct pic32_sport*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct pic32_sport* FUNC7 (struct uart_port*) ; 
 scalar_t__ FUNC8 (struct ktermios*) ; 
 int /*<<< orphan*/  FUNC9 (struct ktermios*,unsigned int,unsigned int) ; 
 unsigned int FUNC10 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int FUNC11 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (struct uart_port*,int,unsigned int) ; 

__attribute__((used)) static void FUNC13(struct uart_port *port,
				   struct ktermios *new,
				   struct ktermios *old)
{
	struct pic32_sport *sport = FUNC7(port);
	unsigned int baud;
	unsigned int quot;
	unsigned long flags;

	FUNC5(&port->lock, flags);

	/* disable uart and mask all interrupts while changing speed */
	FUNC2(port);

	/* stop bit options */
	if (new->c_cflag & CSTOPB)
		FUNC4(sport, FUNC1(PIC32_UART_MODE),
					PIC32_UART_MODE_STSEL);
	else
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_STSEL);

	/* parity options */
	if (new->c_cflag & PARENB) {
		if (new->c_cflag & PARODD) {
			FUNC4(sport, FUNC1(PIC32_UART_MODE),
					PIC32_UART_MODE_PDSEL1);
			FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_PDSEL0);
		} else {
			FUNC4(sport, FUNC1(PIC32_UART_MODE),
					PIC32_UART_MODE_PDSEL0);
			FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_PDSEL1);
		}
	} else {
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_PDSEL1 |
					PIC32_UART_MODE_PDSEL0);
	}
	/* if hw flow ctrl, then the pins must be specified in device tree */
	if ((new->c_cflag & CRTSCTS) && sport->hw_flow_ctrl) {
		/* enable hardware flow control */
		FUNC4(sport, FUNC1(PIC32_UART_MODE),
					PIC32_UART_MODE_UEN1);
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_UEN0);
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_RTSMD);
	} else {
		/* disable hardware flow control */
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_UEN1);
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_UEN0);
		FUNC4(sport, FUNC0(PIC32_UART_MODE),
					PIC32_UART_MODE_RTSMD);
	}

	/* Always 8-bit */
	new->c_cflag |= CS8;

	/* Mark/Space parity is not supported */
	new->c_cflag &= ~CMSPAR;

	/* update baud */
	baud = FUNC10(port, new, old, 0, port->uartclk / 16);
	quot = FUNC11(port, baud) - 1;
	FUNC4(sport, PIC32_UART_BRG, quot);
	FUNC12(port, new->c_cflag, baud);

	if (FUNC8(new))
		FUNC9(new, baud, baud);

	/* enable uart */
	FUNC3(port);

	FUNC6(&port->lock, flags);
}