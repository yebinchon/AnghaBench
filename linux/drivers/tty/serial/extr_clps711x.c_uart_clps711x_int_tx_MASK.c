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
typedef  int u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tx; } ;
struct uart_port {TYPE_2__ icount; scalar_t__ membase; int /*<<< orphan*/  irq; scalar_t__ x_char; TYPE_1__* state; int /*<<< orphan*/  dev; } ;
struct clps711x_port {int /*<<< orphan*/  syscon; scalar_t__ tx_enabled; } ;
struct circ_buf {size_t tail; scalar_t__* buf; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {struct circ_buf xmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  SYSFLG_OFFSET ; 
 int SYSFLG_UTXFF ; 
 scalar_t__ UARTDR_OFFSET ; 
 int UART_XMIT_SIZE ; 
 scalar_t__ WAKEUP_CHARS ; 
 struct clps711x_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC3 (struct circ_buf*) ; 
 scalar_t__ FUNC4 (struct circ_buf*) ; 
 scalar_t__ FUNC5 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	struct clps711x_port *s = FUNC0(port->dev);
	struct circ_buf *xmit = &port->state->xmit;

	if (port->x_char) {
		FUNC7(port->x_char, port->membase + UARTDR_OFFSET);
		port->icount.tx++;
		port->x_char = 0;
		return IRQ_HANDLED;
	}

	if (FUNC4(xmit) || FUNC5(port)) {
		if (s->tx_enabled) {
			FUNC1(port->irq);
			s->tx_enabled = 0;
		}
		return IRQ_HANDLED;
	}

	while (!FUNC4(xmit)) {
		u32 sysflg = 0;

		FUNC7(xmit->buf[xmit->tail], port->membase + UARTDR_OFFSET);
		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
		port->icount.tx++;

		FUNC2(s->syscon, SYSFLG_OFFSET, &sysflg);
		if (sysflg & SYSFLG_UTXFF)
			break;
	}

	if (FUNC3(xmit) < WAKEUP_CHARS)
		FUNC6(port);

	return IRQ_HANDLED;
}