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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct uart_pmac_port {TYPE_1__ port; int /*<<< orphan*/ * curregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTR ; 
 size_t R5 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*) ; 

__attribute__((used)) static void FUNC5(struct uart_pmac_port *uap)
{
	unsigned long flags;

	FUNC1(&uap->port.lock, flags);
	uap->curregs[R5] |= DTR;
	FUNC3(uap, R5, uap->curregs[R5]);
	FUNC4(uap);
	FUNC2(&uap->port.lock, flags);
	FUNC0(110);

	FUNC1(&uap->port.lock, flags);
	uap->curregs[R5] &= ~DTR;
	FUNC3(uap, R5, uap->curregs[R5]);
	FUNC4(uap);
	FUNC2(&uap->port.lock, flags);
	FUNC0(10);
}