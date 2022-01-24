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
struct uart_8250_port {struct uart_8250_em485* em485; } ;
struct uart_8250_em485 {int /*<<< orphan*/ * active_timer; } ;

/* Variables and functions */
 unsigned char BOTH_EMPTY ; 
 int /*<<< orphan*/  UART_LSR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 unsigned char FUNC2 (struct uart_8250_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC3(struct uart_8250_port *p)
{
	struct uart_8250_em485 *em485 = p->em485;

	if (em485) {
		unsigned char lsr = FUNC2(p, UART_LSR);
		/*
		 * To provide required timeing and allow FIFO transfer,
		 * __stop_tx_rs485() must be called only when both FIFO and
		 * shift register are empty. It is for device driver to enable
		 * interrupt on TEMT.
		 */
		if ((lsr & BOTH_EMPTY) != BOTH_EMPTY)
			return;

		em485->active_timer = NULL;

		FUNC1(p);
	}
	FUNC0(p);
}