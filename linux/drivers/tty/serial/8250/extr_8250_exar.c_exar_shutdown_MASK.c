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
struct uart_port {TYPE_1__* state; } ;
struct uart_8250_port {int dummy; } ;
struct circ_buf {int dummy; } ;
struct TYPE_2__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_TEMT ; 
 unsigned char UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 unsigned char FUNC1 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct circ_buf*) ; 
 struct uart_8250_port* FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port)
{
	unsigned char lsr;
	bool tx_complete = 0;
	struct uart_8250_port *up = FUNC3(port);
	struct circ_buf *xmit = &port->state->xmit;
	int i = 0;

	do {
		lsr = FUNC1(up, UART_LSR);
		if (lsr & (UART_LSR_TEMT | UART_LSR_THRE))
			tx_complete = 1;
		else
			tx_complete = 0;
		FUNC4(1000, 1100);
	} while (!FUNC2(xmit) && !tx_complete && i++ < 1000);

	FUNC0(port);
}