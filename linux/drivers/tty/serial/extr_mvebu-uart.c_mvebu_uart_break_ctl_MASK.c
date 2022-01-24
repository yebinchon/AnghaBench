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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;

/* Variables and functions */
 unsigned int CTRL_SND_BRK_SEQ ; 
 scalar_t__ FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct uart_port *port, int brk)
{
	unsigned int ctl;
	unsigned long flags;

	FUNC2(&port->lock, flags);
	ctl = FUNC1(port->membase + FUNC0(port));
	if (brk == -1)
		ctl |= CTRL_SND_BRK_SEQ;
	else
		ctl &= ~CTRL_SND_BRK_SEQ;
	FUNC4(ctl, port->membase + FUNC0(port));
	FUNC3(&port->lock, flags);
}