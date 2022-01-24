#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct zs_scc {int /*<<< orphan*/  zlock; } ;
struct TYPE_4__ {int /*<<< orphan*/  rng; int /*<<< orphan*/  dsr; } ;
struct uart_port {TYPE_3__* state; TYPE_1__ icount; } ;
struct zs_port {int* regs; int brk; unsigned int mctrl; int /*<<< orphan*/  tty_break; struct zs_scc* scc; struct uart_port port; } ;
struct TYPE_5__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;

/* Variables and functions */
 int BRKIE ; 
 int BRK_ABRT ; 
 int /*<<< orphan*/  R0 ; 
 int /*<<< orphan*/  RES_EXT_INT ; 
 int /*<<< orphan*/  Rx_BRK ; 
 int /*<<< orphan*/  Rx_SYS ; 
 unsigned int TIOCM_CAR ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RNG ; 
 int FUNC0 (struct zs_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct zs_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (struct zs_port*) ; 

__attribute__((used)) static void FUNC9(struct zs_port *zport, struct zs_port *zport_a)
{
	struct uart_port *uport = &zport->port;
	struct zs_scc *scc = zport->scc;
	unsigned int delta;
	u8 status, brk;

	FUNC1(&scc->zlock);

	/* Get status from Read Register 0.  */
	status = FUNC0(zport, R0);

	if (zport->regs[15] & BRKIE) {
		brk = status & BRK_ABRT;
		if (brk && !zport->brk) {
			FUNC2(&scc->zlock);
			if (FUNC3(uport))
				zport->tty_break = Rx_SYS;
			else
				zport->tty_break = Rx_BRK;
			FUNC1(&scc->zlock);
		}
		zport->brk = brk;
	}

	if (zport != zport_a) {
		delta = FUNC8(zport);
		FUNC2(&scc->zlock);

		if (delta & TIOCM_CTS)
			FUNC4(uport,
					       zport->mctrl & TIOCM_CTS);
		if (delta & TIOCM_CAR)
			FUNC5(uport,
					       zport->mctrl & TIOCM_CAR);
		if (delta & TIOCM_RNG)
			uport->icount.dsr++;
		if (delta & TIOCM_DSR)
			uport->icount.rng++;

		if (delta)
			FUNC6(&uport->state->port.delta_msr_wait);

		FUNC1(&scc->zlock);
	}

	/* Clear the status condition...  */
	FUNC7(zport, R0, RES_EXT_INT);

	FUNC2(&scc->zlock);
}