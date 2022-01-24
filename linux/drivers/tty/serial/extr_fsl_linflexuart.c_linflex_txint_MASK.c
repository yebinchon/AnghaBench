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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; scalar_t__ x_char; TYPE_1__* state; } ;
struct circ_buf {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {struct circ_buf xmit; } ;

/* Variables and functions */
 scalar_t__ BDRL ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long LINFLEXD_UARTSR_DTFTFF ; 
 scalar_t__ UARTSR ; 
 scalar_t__ WAKEUP_CHARS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 unsigned long FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (struct circ_buf*) ; 
 scalar_t__ FUNC6 (struct circ_buf*) ; 
 scalar_t__ FUNC7 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct uart_port *sport = dev_id;
	struct circ_buf *xmit = &sport->state->xmit;
	unsigned long flags;
	unsigned long status;

	FUNC3(&sport->lock, flags);

	if (sport->x_char) {
		FUNC9(sport->x_char, sport->membase + BDRL);

		/* waiting for data transmission completed */
		while (((status = FUNC2(sport->membase + UARTSR)) &
			LINFLEXD_UARTSR_DTFTFF) != LINFLEXD_UARTSR_DTFTFF)
			;

		FUNC10(status | LINFLEXD_UARTSR_DTFTFF,
		       sport->membase + UARTSR);

		goto out;
	}

	if (FUNC6(xmit) || FUNC7(sport)) {
		FUNC0(sport);
		goto out;
	}

	FUNC1(sport);

	if (FUNC5(xmit) < WAKEUP_CHARS)
		FUNC8(sport);

out:
	FUNC4(&sport->lock, flags);
	return IRQ_HANDLED;
}