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
struct uart_port {int /*<<< orphan*/  dev; } ;
struct atmel_uart_port {int backup_imr; int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_IDR ; 
 int /*<<< orphan*/  ATMEL_US_IER ; 
 int /*<<< orphan*/  ATMEL_US_IMR ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 struct atmel_uart_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static void FUNC6(struct uart_port *port, unsigned int state,
			    unsigned int oldstate)
{
	struct atmel_uart_port *atmel_port = FUNC5(port);

	switch (state) {
	case 0:
		/*
		 * Enable the peripheral clock for this serial port.
		 * This is called on uart_open() or a resume event.
		 */
		FUNC3(atmel_port->clk);

		/* re-enable interrupts if we disabled some on suspend */
		FUNC1(port, ATMEL_US_IER, atmel_port->backup_imr);
		break;
	case 3:
		/* Back up the interrupt mask and disable all interrupts */
		atmel_port->backup_imr = FUNC0(port, ATMEL_US_IMR);
		FUNC1(port, ATMEL_US_IDR, -1);

		/*
		 * Disable the peripheral clock for this serial port.
		 * This is called on uart_close() or a suspend event.
		 */
		FUNC2(atmel_port->clk);
		break;
	default:
		FUNC4(port->dev, "atmel_serial: unknown pm %d\n", state);
	}
}