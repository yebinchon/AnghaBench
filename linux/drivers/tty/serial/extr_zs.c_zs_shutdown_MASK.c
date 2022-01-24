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
struct zs_scc {int /*<<< orphan*/  irq_guard; int /*<<< orphan*/  zlock; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct zs_port {TYPE_1__ port; int /*<<< orphan*/ * regs; struct zs_scc* scc; } ;
struct uart_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  R3 ; 
 int /*<<< orphan*/  R5 ; 
 int /*<<< orphan*/  RxENABLE ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct zs_scc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct zs_port* FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct uart_port *uport)
{
	struct zs_port *zport = FUNC4(uport);
	struct zs_scc *scc = zport->scc;
	unsigned long flags;
	int irq_guard;

	FUNC2(&scc->zlock, flags);

	zport->regs[3] &= ~RxENABLE;
	FUNC5(zport, R5, zport->regs[5]);
	FUNC5(zport, R3, zport->regs[3]);

	FUNC3(&scc->zlock, flags);

	irq_guard = FUNC0(-1, &scc->irq_guard);
	if (!irq_guard)
		FUNC1(zport->port.irq, scc);
}