#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {int /*<<< orphan*/  flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  delta_msr_wait; } ;
struct TYPE_5__ {int /*<<< orphan*/ * buf; } ;
struct serial_state {int MCR; TYPE_2__ tport; scalar_t__ IER; TYPE_1__ xmit; int /*<<< orphan*/  line; } ;
struct TYPE_7__ {int intena; int /*<<< orphan*/  adkcon; } ;

/* Variables and functions */
 int /*<<< orphan*/  AC_UARTBRK ; 
 scalar_t__ FUNC0 (struct tty_struct*) ; 
 int IF_RBF ; 
 int IF_TBE ; 
 int /*<<< orphan*/  IRQ_AMIGA_VERTB ; 
 int SER_DTR ; 
 int SER_RTS ; 
 int /*<<< orphan*/  TTY_IO_ERROR ; 
 TYPE_4__ custom ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct serial_state*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC12(struct tty_struct *tty, struct serial_state *info)
{
	unsigned long	flags;
	struct serial_state *state;

	if (!FUNC9(&info->tport))
		return;

	state = info;

#ifdef SERIAL_DEBUG_OPEN
	printk("Shutting down serial port %d ....\n", info->line);
#endif

	FUNC4(flags); /* Disable interrupts */

	/*
	 * clear delta_msr_wait queue to avoid mem leaks: we may free the irq
	 * here so the queue might never be waken up
	 */
	FUNC11(&info->tport.delta_msr_wait);

	/*
	 * Free the IRQ, if necessary
	 */
	FUNC1(IRQ_AMIGA_VERTB, info);

	if (info->xmit.buf) {
		FUNC2((unsigned long) info->xmit.buf);
		info->xmit.buf = NULL;
	}

	info->IER = 0;
	custom.intena = IF_RBF | IF_TBE;
	FUNC5();

	/* disable break condition */
	custom.adkcon = AC_UARTBRK;
	FUNC5();

	if (FUNC0(tty))
		info->MCR &= ~(SER_DTR|SER_RTS);
	FUNC7(info->MCR);

	FUNC8(TTY_IO_ERROR, &tty->flags);

	FUNC10(&info->tport, 0);
	FUNC3(flags);
}