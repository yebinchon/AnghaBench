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
struct uart_port {int regshift; scalar_t__ membase; } ;

/* Variables and functions */
 int UART_LSR ; 
 unsigned int UART_LSR_TEMT ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *p)
{
	unsigned int tries = 20000;
	unsigned int delay_threshold = tries - 1000;
	unsigned int lsr;

	while (tries--) {
		lsr = FUNC0 (p->membase + (UART_LSR << p->regshift));
		if (lsr & UART_LSR_TEMT)
			break;

		/* The device is first given a chance to empty without delay,
		 * to avoid slowdowns at high bitrates. If after 1000 tries
		 * the buffer has still not emptied, allow more time for low-
		 * speed links. */
		if (tries < delay_threshold)
			FUNC1 (1);
	}
}