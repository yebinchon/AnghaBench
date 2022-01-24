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
struct uart_port {int status; } ;
struct TYPE_2__ {int /*<<< orphan*/  line; int /*<<< orphan*/  dev; } ;
struct uart_omap_port {unsigned char mcr; unsigned char efr; int /*<<< orphan*/  dev; TYPE_1__ port; } ;

/* Variables and functions */
 unsigned int TIOCM_DTR ; 
 unsigned int TIOCM_LOOP ; 
 unsigned int TIOCM_OUT1 ; 
 unsigned int TIOCM_OUT2 ; 
 unsigned int TIOCM_RTS ; 
 int /*<<< orphan*/  UART_EFR ; 
 unsigned char UART_EFR_RTS ; 
 int /*<<< orphan*/  UART_LCR ; 
 unsigned char UART_LCR_CONF_MODE_B ; 
 int /*<<< orphan*/  UART_MCR ; 
 unsigned char UART_MCR_DTR ; 
 unsigned char UART_MCR_LOOP ; 
 unsigned char UART_MCR_OUT1 ; 
 unsigned char UART_MCR_OUT2 ; 
 unsigned char UART_MCR_RTS ; 
 int UPSTAT_AUTORTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned char FUNC4 (struct uart_omap_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_omap_port*,int /*<<< orphan*/ ,unsigned char) ; 
 struct uart_omap_port* FUNC6 (struct uart_port*) ; 

__attribute__((used)) static void FUNC7(struct uart_port *port, unsigned int mctrl)
{
	struct uart_omap_port *up = FUNC6(port);
	unsigned char mcr = 0, old_mcr, lcr;

	FUNC0(up->port.dev, "serial_omap_set_mctrl+%d\n", up->port.line);
	if (mctrl & TIOCM_RTS)
		mcr |= UART_MCR_RTS;
	if (mctrl & TIOCM_DTR)
		mcr |= UART_MCR_DTR;
	if (mctrl & TIOCM_OUT1)
		mcr |= UART_MCR_OUT1;
	if (mctrl & TIOCM_OUT2)
		mcr |= UART_MCR_OUT2;
	if (mctrl & TIOCM_LOOP)
		mcr |= UART_MCR_LOOP;

	FUNC1(up->dev);
	old_mcr = FUNC4(up, UART_MCR);
	old_mcr &= ~(UART_MCR_LOOP | UART_MCR_OUT2 | UART_MCR_OUT1 |
		     UART_MCR_DTR | UART_MCR_RTS);
	up->mcr = old_mcr | mcr;
	FUNC5(up, UART_MCR, up->mcr);

	/* Turn off autoRTS if RTS is lowered; restore autoRTS if RTS raised */
	lcr = FUNC4(up, UART_LCR);
	FUNC5(up, UART_LCR, UART_LCR_CONF_MODE_B);
	if ((mctrl & TIOCM_RTS) && (port->status & UPSTAT_AUTORTS))
		up->efr |= UART_EFR_RTS;
	else
		up->efr &= ~UART_EFR_RTS;
	FUNC5(up, UART_EFR, up->efr);
	FUNC5(up, UART_LCR, lcr);

	FUNC2(up->dev);
	FUNC3(up->dev);
}