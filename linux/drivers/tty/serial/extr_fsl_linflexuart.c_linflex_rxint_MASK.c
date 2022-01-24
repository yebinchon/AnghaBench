#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  rx; } ;
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; TYPE_2__ icount; TYPE_1__* state; } ;
struct tty_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct tty_port port; } ;

/* Variables and functions */
 scalar_t__ BDRM ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned long LINFLEXD_UARTSR_BOF ; 
 unsigned long LINFLEXD_UARTSR_DRFRFE ; 
 unsigned long LINFLEXD_UARTSR_FEF ; 
 unsigned long LINFLEXD_UARTSR_PE ; 
 unsigned long LINFLEXD_UARTSR_RMB ; 
 unsigned long LINFLEXD_UARTSR_SZF ; 
 unsigned int TTY_NORMAL ; 
 scalar_t__ UARTSR ; 
 unsigned char FUNC0 (scalar_t__) ; 
 unsigned long FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct tty_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty_port*,unsigned char,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 scalar_t__ FUNC7 (struct uart_port*,unsigned char) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC9(int irq, void *dev_id)
{
	struct uart_port *sport = dev_id;
	unsigned int flg;
	struct tty_port *port = &sport->state->port;
	unsigned long flags, status;
	unsigned char rx;
	bool brk;

	FUNC2(&sport->lock, flags);

	status = FUNC1(sport->membase + UARTSR);
	while (status & LINFLEXD_UARTSR_RMB) {
		rx = FUNC0(sport->membase + BDRM);
		brk = false;
		flg = TTY_NORMAL;
		sport->icount.rx++;

		if (status & (LINFLEXD_UARTSR_BOF | LINFLEXD_UARTSR_SZF |
			      LINFLEXD_UARTSR_FEF | LINFLEXD_UARTSR_PE)) {
			if (status & LINFLEXD_UARTSR_SZF)
				status |= LINFLEXD_UARTSR_SZF;
			if (status & LINFLEXD_UARTSR_BOF)
				status |= LINFLEXD_UARTSR_BOF;
			if (status & LINFLEXD_UARTSR_FEF) {
				if (!rx)
					brk = true;
				status |= LINFLEXD_UARTSR_FEF;
			}
			if (status & LINFLEXD_UARTSR_PE)
				status |=  LINFLEXD_UARTSR_PE;
		}

		FUNC8(status | LINFLEXD_UARTSR_RMB | LINFLEXD_UARTSR_DRFRFE,
		       sport->membase + UARTSR);
		status = FUNC1(sport->membase + UARTSR);

		if (brk) {
			FUNC6(sport);
		} else {
#ifdef SUPPORT_SYSRQ
			if (uart_handle_sysrq_char(sport, (unsigned char)rx))
				continue;
#endif
			FUNC5(port, rx, flg);
		}
	}

	FUNC3(&sport->lock, flags);

	FUNC4(port);

	return IRQ_HANDLED;
}