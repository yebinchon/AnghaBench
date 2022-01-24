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
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct uart_pmac_port {int /*<<< orphan*/  flags; TYPE_1__ port; int /*<<< orphan*/ * curregs; } ;

/* Variables and functions */
 int /*<<< orphan*/  PMACZILOG_FLAG_IS_OPEN ; 
 size_t R3 ; 
 size_t R5 ; 
 int /*<<< orphan*/  RxENABLE ; 
 int /*<<< orphan*/  SND_BRK ; 
 int /*<<< orphan*/  TxENABLE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_pmac_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_pmac_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 struct uart_pmac_port* FUNC8 (struct uart_port*) ; 

__attribute__((used)) static void FUNC9(struct uart_port *port)
{
	struct uart_pmac_port *uap = FUNC8(port);
	unsigned long flags;

	FUNC2("pmz: shutdown()\n");

	FUNC6(&port->lock, flags);

	/* Disable interrupt requests for the channel */
	FUNC3(uap, 0);

	if (!FUNC0(uap)) {
		/* Disable receiver and transmitter */
		uap->curregs[R3] &= ~RxENABLE;
		uap->curregs[R5] &= ~TxENABLE;

		/* Disable break assertion */
		uap->curregs[R5] &= ~SND_BRK;
		FUNC4(uap);
	}

	FUNC7(&port->lock, flags);

	/* Release interrupt handler */
	FUNC1(uap->port.irq, uap);

	FUNC6(&port->lock, flags);

	uap->flags &= ~PMACZILOG_FLAG_IS_OPEN;

	if (!FUNC0(uap))
		FUNC5(uap, 0);	/* Shut the chip down */

	FUNC7(&port->lock, flags);

	FUNC2("pmz: shutdown() done.\n");
}