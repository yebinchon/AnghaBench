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
typedef  int /*<<< orphan*/  u32 ;
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  membase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPC32XX_HSU_BREAK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port,
				     int break_state)
{
	unsigned long flags;
	u32 tmp;

	FUNC2(&port->lock, flags);
	tmp = FUNC1(FUNC0(port->membase));
	if (break_state != 0)
		tmp |= LPC32XX_HSU_BREAK;
	else
		tmp &= ~LPC32XX_HSU_BREAK;
	FUNC4(tmp, FUNC0(port->membase));
	FUNC3(&port->lock, flags);
}