#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int isr1; } ;
union sab82532_irq_status {TYPE_2__ sreg; } ;
struct TYPE_13__ {int /*<<< orphan*/  tx; } ;
struct TYPE_16__ {int fifosize; TYPE_4__ icount; TYPE_1__* state; } ;
struct uart_sunsab_port {int interrupt_mask1; TYPE_7__ port; TYPE_6__* regs; int /*<<< orphan*/  irqflags; } ;
struct circ_buf {int* buf; size_t tail; } ;
struct TYPE_14__ {int /*<<< orphan*/  cmdr; int /*<<< orphan*/ * xfifo; int /*<<< orphan*/  imr1; } ;
struct TYPE_12__ {int /*<<< orphan*/  star; } ;
struct TYPE_15__ {TYPE_5__ w; TYPE_3__ r; } ;
struct TYPE_10__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  SAB82532_ALLS ; 
 int SAB82532_CMDR_XF ; 
 int SAB82532_IMR1_ALLS ; 
 int SAB82532_IMR1_XPR ; 
 int SAB82532_ISR1_ALLS ; 
 int SAB82532_ISR1_XPR ; 
 int SAB82532_STAR_XFW ; 
 int /*<<< orphan*/  SAB82532_XPR ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_sunsab_port*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_sunsab_port*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct circ_buf*) ; 
 scalar_t__ FUNC8 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(struct uart_sunsab_port *up,
			   union sab82532_irq_status *stat)
{
	struct circ_buf *xmit = &up->port.state->xmit;
	int i;

	if (stat->sreg.isr1 & SAB82532_ISR1_ALLS) {
		up->interrupt_mask1 |= SAB82532_IMR1_ALLS;
		FUNC10(up->interrupt_mask1, &up->regs->w.imr1);
		FUNC2(SAB82532_ALLS, &up->irqflags);
	}

#if 0 /* bde@nwlink.com says this check causes problems */
	if (!(stat->sreg.isr1 & SAB82532_ISR1_XPR))
		return;
#endif

	if (!(FUNC1(&up->regs->r.star) & SAB82532_STAR_XFW))
		return;

	FUNC2(SAB82532_XPR, &up->irqflags);
	FUNC5(up);

	if (FUNC7(xmit) || FUNC8(&up->port)) {
		up->interrupt_mask1 |= SAB82532_IMR1_XPR;
		FUNC10(up->interrupt_mask1, &up->regs->w.imr1);
		return;
	}

	up->interrupt_mask1 &= ~(SAB82532_IMR1_ALLS|SAB82532_IMR1_XPR);
	FUNC10(up->interrupt_mask1, &up->regs->w.imr1);
	FUNC0(SAB82532_ALLS, &up->irqflags);

	/* Stuff 32 bytes into Transmit FIFO. */
	FUNC0(SAB82532_XPR, &up->irqflags);
	for (i = 0; i < up->port.fifosize; i++) {
		FUNC10(xmit->buf[xmit->tail],
		       &up->regs->w.xfifo[i]);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		up->port.icount.tx++;
		if (FUNC7(xmit))
			break;
	}

	/* Issue a Transmit Frame command. */
	FUNC3(up);
	FUNC10(SAB82532_CMDR_XF, &up->regs->w.cmdr);

	if (FUNC6(xmit) < WAKEUP_CHARS)
		FUNC9(&up->port);

	if (FUNC7(xmit))
		FUNC4(&up->port);
}