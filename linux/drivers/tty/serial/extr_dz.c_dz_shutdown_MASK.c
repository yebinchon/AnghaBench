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
typedef  int u16 ;
struct uart_port {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  lock; } ;
struct dz_port {TYPE_1__ port; struct dz_mux* mux; } ;
struct dz_mux {int /*<<< orphan*/  irq_guard; } ;

/* Variables and functions */
 int /*<<< orphan*/  DZ_CSR ; 
 int DZ_RIE ; 
 int DZ_TIE ; 
 int FUNC0 (int,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct dz_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct dz_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dz_mux*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct dz_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void FUNC8(struct uart_port *uport)
{
	struct dz_port *dport = FUNC7(uport);
	struct dz_mux *mux = dport->mux;
	unsigned long flags;
	int irq_guard;
	u16 tmp;

	FUNC5(&dport->port.lock, flags);
	FUNC3(&dport->port);
	FUNC6(&dport->port.lock, flags);

	irq_guard = FUNC0(-1, &mux->irq_guard);
	if (!irq_guard) {
		/* Disable interrupts.  */
		tmp = FUNC1(dport, DZ_CSR);
		tmp &= ~(DZ_RIE | DZ_TIE);
		FUNC2(dport, DZ_CSR, tmp);

		FUNC4(dport->port.irq, mux);
	}
}