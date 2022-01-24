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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  dsr; int /*<<< orphan*/  rng; } ;
struct uart_port {int /*<<< orphan*/  lock; TYPE_3__* state; TYPE_1__ icount; } ;
struct mctrl_gpios {int mctrl_prev; struct uart_port* port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_5__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_6__ {TYPE_2__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int MCTRL_ANY_DELTA ; 
 int TIOCM_CD ; 
 int TIOCM_CTS ; 
 int TIOCM_DSR ; 
 int TIOCM_RI ; 
 int /*<<< orphan*/  FUNC0 (struct mctrl_gpios*,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *context)
{
	struct mctrl_gpios *gpios = context;
	struct uart_port *port = gpios->port;
	u32 mctrl = gpios->mctrl_prev;
	u32 mctrl_diff;
	unsigned long flags;

	FUNC0(gpios, &mctrl);

	FUNC1(&port->lock, flags);

	mctrl_diff = mctrl ^ gpios->mctrl_prev;
	gpios->mctrl_prev = mctrl;

	if (mctrl_diff & MCTRL_ANY_DELTA && port->state != NULL) {
		if ((mctrl_diff & mctrl) & TIOCM_RI)
			port->icount.rng++;

		if ((mctrl_diff & mctrl) & TIOCM_DSR)
			port->icount.dsr++;

		if (mctrl_diff & TIOCM_CD)
			FUNC4(port, mctrl & TIOCM_CD);

		if (mctrl_diff & TIOCM_CTS)
			FUNC3(port, mctrl & TIOCM_CTS);

		FUNC5(&port->state->port.delta_msr_wait);
	}

	FUNC2(&port->lock, flags);

	return IRQ_HANDLED;
}