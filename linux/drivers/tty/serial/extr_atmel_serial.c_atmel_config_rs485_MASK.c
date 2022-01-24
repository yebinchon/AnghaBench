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
struct serial_rs485 {int flags; unsigned int delay_rts_after_send; } ;
struct uart_port {int /*<<< orphan*/  dev; struct serial_rs485 rs485; } ;
struct atmel_uart_port {unsigned int tx_done_mask; } ;

/* Variables and functions */
 int ATMEL_US_ENDTX ; 
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int /*<<< orphan*/  ATMEL_US_MR ; 
 int /*<<< orphan*/  ATMEL_US_TTGR ; 
 int ATMEL_US_TXBUFE ; 
 unsigned int ATMEL_US_TXEMPTY ; 
 int ATMEL_US_TXRDY ; 
 unsigned int ATMEL_US_USMODE ; 
 unsigned int ATMEL_US_USMODE_RS485 ; 
 int SER_RS485_ENABLED ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 struct atmel_uart_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port,
			      struct serial_rs485 *rs485conf)
{
	struct atmel_uart_port *atmel_port = FUNC4(port);
	unsigned int mode;

	/* Disable interrupts */
	FUNC1(port, ATMEL_US_IDR, atmel_port->tx_done_mask);

	mode = FUNC0(port, ATMEL_US_MR);

	/* Resetting serial mode to RS232 (0x0) */
	mode &= ~ATMEL_US_USMODE;

	port->rs485 = *rs485conf;

	if (rs485conf->flags & SER_RS485_ENABLED) {
		FUNC3(port->dev, "Setting UART to RS485\n");
		atmel_port->tx_done_mask = ATMEL_US_TXEMPTY;
		FUNC1(port, ATMEL_US_TTGR,
				  rs485conf->delay_rts_after_send);
		mode |= ATMEL_US_USMODE_RS485;
	} else {
		FUNC3(port->dev, "Setting UART to RS232\n");
		if (FUNC2(port))
			atmel_port->tx_done_mask = ATMEL_US_ENDTX |
				ATMEL_US_TXBUFE;
		else
			atmel_port->tx_done_mask = ATMEL_US_TXRDY;
	}
	FUNC1(port, ATMEL_US_MR, mode);

	/* Enable interrupts */
	FUNC1(port, ATMEL_US_IER, atmel_port->tx_done_mask);

	return 0;
}