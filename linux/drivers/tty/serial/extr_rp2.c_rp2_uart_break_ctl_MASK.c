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
struct uart_port {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  RP2_TXRX_CTL ; 
 int /*<<< orphan*/  RP2_TXRX_CTL_BREAK_m ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct uart_port *port, int break_state)
{
	unsigned long flags;

	FUNC2(&port->lock, flags);
	FUNC1(FUNC0(port), RP2_TXRX_CTL, RP2_TXRX_CTL_BREAK_m,
		break_state ? RP2_TXRX_CTL_BREAK_m : 0);
	FUNC3(&port->lock, flags);
}