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
struct uart_port {int /*<<< orphan*/  lock; } ;
struct TYPE_2__ {int line; } ;
struct dz_port {TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  DZ_TCR ; 
 unsigned short FUNC0 (struct dz_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dz_port*,int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dz_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_port *uport, int break_state)
{
	/*
	 * FIXME: Can't access BREAK bits in TDR easily;
	 * reuse the code for polled TX. --macro
	 */
	struct dz_port *dport = FUNC4(uport);
	unsigned long flags;
	unsigned short tmp, mask = 1 << dport->port.line;

	FUNC2(&uport->lock, flags);
	tmp = FUNC0(dport, DZ_TCR);
	if (break_state)
		tmp |= mask;
	else
		tmp &= ~mask;
	FUNC1(dport, DZ_TCR, tmp);
	FUNC3(&uport->lock, flags);
}