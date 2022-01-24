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
struct zs_scc {int initialised; int /*<<< orphan*/  zlock; } ;
struct zs_port {int /*<<< orphan*/  regs; struct zs_scc* scc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FHWRES ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  R9 ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct zs_port*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct zs_port*,int) ; 

__attribute__((used)) static void FUNC8(struct zs_port *zport)
{
	struct zs_scc *scc = zport->scc;
	int irq;
	unsigned long flags;

	FUNC3(&scc->zlock, flags);
	irq = !FUNC0(flags);
	if (!scc->initialised) {
		/* Reset the pointer first, just in case...  */
		FUNC2(zport, R0);
		/* And let the current transmission finish.  */
		FUNC7(zport, irq);
		FUNC6(zport, R9, FHWRES);
		FUNC5(10);
		FUNC6(zport, R9, 0);
		scc->initialised = 1;
	}
	FUNC1(zport, zport->regs, irq);
	FUNC4(&scc->zlock, flags);
}