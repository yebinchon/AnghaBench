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
struct uart_port {unsigned long uartclk; int read_status_mask; int ignore_status_mask; int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_1__* dev; } ;
struct ktermios {int c_cflag; int c_iflag; } ;
struct TYPE_2__ {int /*<<< orphan*/  of_node; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int CREAD ; 
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
 unsigned int MLB_USIO_ESCR_FLWEN ; 
 unsigned int MLB_USIO_ESCR_L_5BIT ; 
 unsigned int MLB_USIO_ESCR_L_6BIT ; 
 unsigned int MLB_USIO_ESCR_L_7BIT ; 
 unsigned int MLB_USIO_ESCR_L_8BIT ; 
 unsigned int MLB_USIO_ESCR_P ; 
 unsigned int MLB_USIO_ESCR_PEN ; 
 unsigned long MLB_USIO_FCR_FCL1 ; 
 unsigned long MLB_USIO_FCR_FCL2 ; 
 unsigned long MLB_USIO_FCR_FE1 ; 
 unsigned long MLB_USIO_FCR_FE2 ; 
 unsigned long MLB_USIO_FCR_FRIIE ; 
 scalar_t__ MLB_USIO_REG_BGR ; 
 scalar_t__ MLB_USIO_REG_ESCR ; 
 scalar_t__ MLB_USIO_REG_FBYTE ; 
 scalar_t__ MLB_USIO_REG_FCR ; 
 scalar_t__ MLB_USIO_REG_SCR ; 
 scalar_t__ MLB_USIO_REG_SMR ; 
 scalar_t__ MLB_USIO_REG_SSR ; 
 unsigned int MLB_USIO_SCR_RIE ; 
 unsigned int MLB_USIO_SCR_RXE ; 
 unsigned int MLB_USIO_SCR_TBIE ; 
 unsigned int MLB_USIO_SCR_TXE ; 
 unsigned int MLB_USIO_SCR_UPCL ; 
 unsigned int MLB_USIO_SMR_SBL ; 
 unsigned int MLB_USIO_SMR_SOE ; 
 int MLB_USIO_SSR_FRE ; 
 int MLB_USIO_SSR_ORE ; 
 int MLB_USIO_SSR_PE ; 
 int MLB_USIO_SSR_RDRF ; 
 unsigned int MLB_USIO_SSR_REC ; 
 int MLB_USIO_SSR_TDRE ; 
 int PARENB ; 
 int PARODD ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC4 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (unsigned long,scalar_t__) ; 

__attribute__((used)) static void FUNC8(struct uart_port *port,
			struct ktermios *termios, struct ktermios *old)
{
	unsigned int escr, smr = MLB_USIO_SMR_SOE;
	unsigned long flags, baud, quot;

	switch (termios->c_cflag & CSIZE) {
	case CS5:
		escr = MLB_USIO_ESCR_L_5BIT;
		break;
	case CS6:
		escr = MLB_USIO_ESCR_L_6BIT;
		break;
	case CS7:
		escr = MLB_USIO_ESCR_L_7BIT;
		break;
	case CS8:
	default:
		escr = MLB_USIO_ESCR_L_8BIT;
		break;
	}

	if (termios->c_cflag & CSTOPB)
		smr |= MLB_USIO_SMR_SBL;

	if (termios->c_cflag & PARENB) {
		escr |= MLB_USIO_ESCR_PEN;
		if (termios->c_cflag & PARODD)
			escr |= MLB_USIO_ESCR_P;
	}
	/* Set hard flow control */
	if (FUNC1(port->dev->of_node, "auto-flow-control") ||
			(termios->c_cflag & CRTSCTS))
		escr |= MLB_USIO_ESCR_FLWEN;

	baud = FUNC4(port, termios, old, 0, port->uartclk);
	if (baud > 1)
		quot = port->uartclk / baud - 1;
	else
		quot = 0;

	FUNC2(&port->lock, flags);
	FUNC5(port, termios->c_cflag, baud);
	port->read_status_mask = MLB_USIO_SSR_ORE | MLB_USIO_SSR_RDRF |
				 MLB_USIO_SSR_TDRE;
	if (termios->c_iflag & INPCK)
		port->read_status_mask |= MLB_USIO_SSR_FRE | MLB_USIO_SSR_PE;

	port->ignore_status_mask = 0;
	if (termios->c_iflag & IGNPAR)
		port->ignore_status_mask |= MLB_USIO_SSR_FRE | MLB_USIO_SSR_PE;
	if ((termios->c_iflag & IGNBRK) && (termios->c_iflag & IGNPAR))
		port->ignore_status_mask |= MLB_USIO_SSR_ORE;
	if ((termios->c_cflag & CREAD) == 0)
		port->ignore_status_mask |= MLB_USIO_SSR_RDRF;

	FUNC6(0, port->membase + MLB_USIO_REG_SCR);
	FUNC6(MLB_USIO_SCR_UPCL, port->membase + MLB_USIO_REG_SCR);
	FUNC6(MLB_USIO_SSR_REC, port->membase + MLB_USIO_REG_SSR);
	FUNC7(0, port->membase + MLB_USIO_REG_FCR);
	FUNC6(smr, port->membase + MLB_USIO_REG_SMR);
	FUNC6(escr, port->membase + MLB_USIO_REG_ESCR);
	FUNC7(quot, port->membase + MLB_USIO_REG_BGR);
	FUNC7(0, port->membase + MLB_USIO_REG_FCR);
	FUNC7(MLB_USIO_FCR_FCL1 | MLB_USIO_FCR_FCL2 | MLB_USIO_FCR_FE1 |
	       MLB_USIO_FCR_FE2 | MLB_USIO_FCR_FRIIE,
	       port->membase + MLB_USIO_REG_FCR);
	FUNC7(0, port->membase + MLB_USIO_REG_FBYTE);
	FUNC7(FUNC0(12), port->membase + MLB_USIO_REG_FBYTE);
	FUNC6(MLB_USIO_SCR_RIE | MLB_USIO_SCR_RXE | MLB_USIO_SCR_TBIE |
	       MLB_USIO_SCR_TXE, port->membase + MLB_USIO_REG_SCR);
	FUNC3(&port->lock, flags);
}