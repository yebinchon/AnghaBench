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
struct TYPE_2__ {int flags; } ;
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; int /*<<< orphan*/  dev; TYPE_1__ rs485; } ;
struct ktermios {int c_cflag; } ;

/* Variables and functions */
 int CMSPAR ; 
 int CRTSCTS ; 
#define  CS5 131 
#define  CS6 130 
#define  CS7 129 
#define  CS8 128 
 int CSIZE ; 
 int CSTOPB ; 
 unsigned char MCFUART_MR1_CS5 ; 
 unsigned char MCFUART_MR1_CS6 ; 
 unsigned char MCFUART_MR1_CS7 ; 
 unsigned char MCFUART_MR1_CS8 ; 
 unsigned char MCFUART_MR1_PARITYEVEN ; 
 unsigned char MCFUART_MR1_PARITYMARK ; 
 unsigned char MCFUART_MR1_PARITYNONE ; 
 unsigned char MCFUART_MR1_PARITYODD ; 
 unsigned char MCFUART_MR1_PARITYSPACE ; 
 unsigned char MCFUART_MR1_RXERRCHAR ; 
 unsigned char MCFUART_MR1_RXIRQRDY ; 
 unsigned char MCFUART_MR1_RXRTS ; 
 unsigned char MCFUART_MR2_STOP1 ; 
 unsigned char MCFUART_MR2_STOP2 ; 
 unsigned char MCFUART_MR2_TXCTS ; 
 unsigned char MCFUART_MR2_TXRTS ; 
 scalar_t__ MCFUART_UBG1 ; 
 scalar_t__ MCFUART_UBG2 ; 
 scalar_t__ MCFUART_UCR ; 
 unsigned int MCFUART_UCR_CMDRESETMRPTR ; 
 unsigned int MCFUART_UCR_CMDRESETRX ; 
 unsigned int MCFUART_UCR_CMDRESETTX ; 
 unsigned int MCFUART_UCR_RXENABLE ; 
 unsigned int MCFUART_UCR_TXENABLE ; 
 scalar_t__ MCFUART_UCSR ; 
 unsigned int MCFUART_UCSR_RXCLKTIMER ; 
 unsigned int MCFUART_UCSR_TXCLKTIMER ; 
 scalar_t__ MCFUART_UFPD ; 
 scalar_t__ MCFUART_UMR ; 
 unsigned int MCF_BUSCLK ; 
 int PARENB ; 
 int PARODD ; 
 int SER_RS485_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned int FUNC3 (struct uart_port*,struct ktermios*,struct ktermios*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, struct ktermios *termios,
	struct ktermios *old)
{
	unsigned long flags;
	unsigned int baud, baudclk;
#if defined(CONFIG_M5272)
	unsigned int baudfr;
#endif
	unsigned char mr1, mr2;

	baud = FUNC3(port, termios, old, 0, 230400);
#if defined(CONFIG_M5272)
	baudclk = (MCF_BUSCLK / baud) / 32;
	baudfr = (((MCF_BUSCLK / baud) + 1) / 2) % 16;
#else
	baudclk = ((MCF_BUSCLK / baud) + 16) / 32;
#endif

	mr1 = MCFUART_MR1_RXIRQRDY | MCFUART_MR1_RXERRCHAR;
	mr2 = 0;

	switch (termios->c_cflag & CSIZE) {
	case CS5: mr1 |= MCFUART_MR1_CS5; break;
	case CS6: mr1 |= MCFUART_MR1_CS6; break;
	case CS7: mr1 |= MCFUART_MR1_CS7; break;
	case CS8:
	default:  mr1 |= MCFUART_MR1_CS8; break;
	}

	if (termios->c_cflag & PARENB) {
		if (termios->c_cflag & CMSPAR) {
			if (termios->c_cflag & PARODD)
				mr1 |= MCFUART_MR1_PARITYMARK;
			else
				mr1 |= MCFUART_MR1_PARITYSPACE;
		} else {
			if (termios->c_cflag & PARODD)
				mr1 |= MCFUART_MR1_PARITYODD;
			else
				mr1 |= MCFUART_MR1_PARITYEVEN;
		}
	} else {
		mr1 |= MCFUART_MR1_PARITYNONE;
	}

	/*
	 * FIXME: port->read_status_mask and port->ignore_status_mask
	 * need to be initialized based on termios settings for
	 * INPCK, IGNBRK, IGNPAR, PARMRK, BRKINT
	 */

	if (termios->c_cflag & CSTOPB)
		mr2 |= MCFUART_MR2_STOP2;
	else
		mr2 |= MCFUART_MR2_STOP1;

	if (termios->c_cflag & CRTSCTS) {
		mr1 |= MCFUART_MR1_RXRTS;
		mr2 |= MCFUART_MR2_TXCTS;
	}

	FUNC1(&port->lock, flags);
	if (port->rs485.flags & SER_RS485_ENABLED) {
		FUNC0(port->dev, "Setting UART to RS485\n");
		mr2 |= MCFUART_MR2_TXRTS;
	}

	FUNC4(port, termios->c_cflag, baud);
	FUNC5(MCFUART_UCR_CMDRESETRX, port->membase + MCFUART_UCR);
	FUNC5(MCFUART_UCR_CMDRESETTX, port->membase + MCFUART_UCR);
	FUNC5(MCFUART_UCR_CMDRESETMRPTR, port->membase + MCFUART_UCR);
	FUNC5(mr1, port->membase + MCFUART_UMR);
	FUNC5(mr2, port->membase + MCFUART_UMR);
	FUNC5((baudclk & 0xff00) >> 8, port->membase + MCFUART_UBG1);
	FUNC5((baudclk & 0xff), port->membase + MCFUART_UBG2);
#if defined(CONFIG_M5272)
	writeb((baudfr & 0x0f), port->membase + MCFUART_UFPD);
#endif
	FUNC5(MCFUART_UCSR_RXCLKTIMER | MCFUART_UCSR_TXCLKTIMER,
		port->membase + MCFUART_UCSR);
	FUNC5(MCFUART_UCR_RXENABLE | MCFUART_UCR_TXENABLE,
		port->membase + MCFUART_UCR);
	FUNC2(&port->lock, flags);
}