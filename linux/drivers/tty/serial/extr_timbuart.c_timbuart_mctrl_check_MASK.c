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
typedef  int u32 ;
struct uart_port {TYPE_2__* state; scalar_t__ membase; } ;
struct TYPE_3__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_4__ {TYPE_1__ port; } ;

/* Variables and functions */
 int CTS_DELTA ; 
 scalar_t__ TIMBUART_ISR ; 
 unsigned int TIOCM_CTS ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, u32 isr, u32 *ier)
{
	unsigned int cts;

	if (isr & CTS_DELTA) {
		/* ack */
		FUNC0(CTS_DELTA, port->membase + TIMBUART_ISR);
		cts = FUNC1(port);
		FUNC2(port, cts & TIOCM_CTS);
		FUNC3(&port->state->port.delta_msr_wait);
	}

	*ier |= CTS_DELTA;
}