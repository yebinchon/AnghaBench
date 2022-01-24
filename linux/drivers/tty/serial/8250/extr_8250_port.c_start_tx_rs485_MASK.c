#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct uart_port {int dummy; } ;
struct TYPE_3__ {int flags; scalar_t__ delay_rts_before_send; } ;
struct TYPE_4__ {TYPE_1__ rs485; } ;
struct uart_8250_port {TYPE_2__ port; struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int /*<<< orphan*/  start_tx_timer; int /*<<< orphan*/ * active_timer; } ;

/* Variables and functions */
 int SER_RS485_RTS_ON_SEND ; 
 int SER_RS485_RX_DURING_TX ; 
 unsigned char UART_MCR_RTS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 unsigned char FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static inline void FUNC6(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC5(port);
	struct uart_8250_em485 *em485 = up->em485;
	unsigned char mcr;

	if (!(up->port.rs485.flags & SER_RS485_RX_DURING_TX))
		FUNC3(&up->port);

	em485->active_timer = NULL;

	mcr = FUNC1(up);
	if (!!(up->port.rs485.flags & SER_RS485_RTS_ON_SEND) !=
	    !!(mcr & UART_MCR_RTS)) {
		if (up->port.rs485.flags & SER_RS485_RTS_ON_SEND)
			mcr |= UART_MCR_RTS;
		else
			mcr &= ~UART_MCR_RTS;
		FUNC2(up, mcr);

		if (up->port.rs485.delay_rts_before_send > 0) {
			em485->active_timer = &em485->start_tx_timer;
			FUNC4(&em485->start_tx_timer,
					 up->port.rs485.delay_rts_before_send);
			return;
		}
	}

	FUNC0(port);
}