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
struct uart_port {scalar_t__ type; } ;
struct uart_8250_port {int bugs; unsigned char lsr_saved_flags; int acr; TYPE_1__* dma; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* tx_dma ) (struct uart_8250_port*) ;} ;

/* Variables and functions */
 unsigned char LSR_SAVE_FLAGS ; 
 scalar_t__ PORT_16C950 ; 
 int /*<<< orphan*/  UART_ACR ; 
 int UART_ACR_TXDIS ; 
 int UART_BUG_TXEN ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_THRE ; 
 scalar_t__ FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ,int) ; 
 unsigned char FUNC3 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

__attribute__((used)) static inline void FUNC6(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC5(port);

	if (up->dma && !up->dma->tx_dma(up))
		return;

	if (FUNC0(up)) {
		if (up->bugs & UART_BUG_TXEN) {
			unsigned char lsr;

			lsr = FUNC3(up, UART_LSR);
			up->lsr_saved_flags |= lsr & LSR_SAVE_FLAGS;
			if (lsr & UART_LSR_THRE)
				FUNC1(up);
		}
	}

	/*
	 * Re-enable the transmitter if we disabled it.
	 */
	if (port->type == PORT_16C950 && up->acr & UART_ACR_TXDIS) {
		up->acr &= ~UART_ACR_TXDIS;
		FUNC2(up, UART_ACR, up->acr);
	}
}