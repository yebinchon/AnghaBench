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
typedef  int u8 ;
struct zs_scc {int /*<<< orphan*/  zlock; struct zs_port* zport; } ;
struct zs_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int CHAEXT ; 
 int CHARxIP ; 
 int CHATxIP ; 
 int CHBEXT ; 
 int CHBRxIP ; 
 int CHBTxIP ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  R3 ; 
 size_t ZS_CHAN_A ; 
 size_t ZS_CHAN_B ; 
 int FUNC0 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct zs_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct zs_port*,struct zs_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct zs_port*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct zs_scc *scc = dev_id;
	struct zs_port *zport_a = &scc->zport[ZS_CHAN_A];
	struct zs_port *zport_b = &scc->zport[ZS_CHAN_B];
	irqreturn_t status = IRQ_NONE;
	u8 zs_intreg;
	int count;

	/*
	 * NOTE: The read register 3, which holds the irq status,
	 *       does so for both channels on each chip.  Although
	 *       the status value itself must be read from the A
	 *       channel and is only valid when read from channel A.
	 *       Yes... broken hardware...
	 */
	for (count = 16; count; count--) {
		FUNC1(&scc->zlock);
		zs_intreg = FUNC0(zport_a, R3);
		FUNC2(&scc->zlock);
		if (!zs_intreg)
			break;

		/*
		 * We do not like losing characters, so we prioritise
		 * interrupt sources a little bit differently than
		 * the SCC would, was it allowed to.
		 */
		if (zs_intreg & CHBRxIP)
			FUNC3(zport_b);
		if (zs_intreg & CHARxIP)
			FUNC3(zport_a);
		if (zs_intreg & CHBEXT)
			FUNC4(zport_b, zport_a);
		if (zs_intreg & CHAEXT)
			FUNC4(zport_a, zport_a);
		if (zs_intreg & CHBTxIP)
			FUNC5(zport_b);
		if (zs_intreg & CHATxIP)
			FUNC5(zport_a);

		status = IRQ_HANDLED;
	}

	return status;
}