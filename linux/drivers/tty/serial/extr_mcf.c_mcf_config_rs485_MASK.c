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
struct serial_rs485 {int flags; } ;
struct uart_port {struct serial_rs485 rs485; scalar_t__ membase; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 unsigned char MCFUART_MR2_TXRTS ; 
 scalar_t__ MCFUART_UMR ; 
 int SER_RS485_ENABLED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 unsigned char FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct uart_port *port, struct serial_rs485 *rs485)
{
	unsigned char mr1, mr2;

	/* Get mode registers */
	mr1 = FUNC1(port->membase + MCFUART_UMR);
	mr2 = FUNC1(port->membase + MCFUART_UMR);
	if (rs485->flags & SER_RS485_ENABLED) {
		FUNC0(port->dev, "Setting UART to RS485\n");
		/* Automatically negate RTS after TX completes */
		mr2 |= MCFUART_MR2_TXRTS;
	} else {
		FUNC0(port->dev, "Setting UART to RS232\n");
		mr2 &= ~MCFUART_MR2_TXRTS;
	}
	FUNC2(mr1, port->membase + MCFUART_UMR);
	FUNC2(mr2, port->membase + MCFUART_UMR);
	port->rs485 = *rs485;

	return 0;
}