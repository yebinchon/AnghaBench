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
struct uart_port {int dummy; } ;

/* Variables and functions */
 int UART_CTRL_TE ; 
 int FUNC0 (struct uart_port*) ; 
 int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 

__attribute__((used)) static int FUNC7(struct uart_port *port, int portnumber)
{
	int ctrl, loop = 0;
	int status;
	int fifosize;
	unsigned long flags;

	ctrl = FUNC0(port);

	/*
	 * Enable the transceiver and wait for it to be ready to send data.
	 * Clear interrupts so that this process will not be externally
	 * interrupted in the middle (which can cause the transceiver to
	 * drain prematurely).
	 */

	FUNC6(flags);

	FUNC3(port, ctrl | UART_CTRL_TE);

	while (!FUNC4(FUNC1(port)))
		loop++;

	/*
	 * Disable the transceiver so data isn't actually sent during the
	 * actual test.
	 */

	FUNC3(port, ctrl & ~(UART_CTRL_TE));

	fifosize = 1;
	FUNC2(port, 0);

	/*
	 * So long as transmitting a character increments the tranceivier FIFO
	 * length the FIFO must be at least that big. These bytes will
	 * automatically drain off of the FIFO.
	 */

	status = FUNC1(port);
	while (((status >> 20) & 0x3F) == fifosize) {
		fifosize++;
		FUNC2(port, 0);
		status = FUNC1(port);
	}

	fifosize--;

	FUNC3(port, ctrl);
	FUNC5(flags);

	if (fifosize == 0)
		fifosize = 1;

	return fifosize;
}