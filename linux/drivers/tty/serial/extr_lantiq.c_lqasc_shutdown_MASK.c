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
struct uart_port {scalar_t__ membase; } ;
struct ltq_uart_port {int /*<<< orphan*/  clk; int /*<<< orphan*/  lock; TYPE_1__* soc; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* free_irq ) (struct uart_port*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ASCRXFCON_RXFEN ; 
 int /*<<< orphan*/  ASCRXFCON_RXFFLU ; 
 int /*<<< orphan*/  ASCTXFCON_TXFEN ; 
 int /*<<< orphan*/  ASCTXFCON_TXFFLU ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LTQ_ASC_CON ; 
 scalar_t__ LTQ_ASC_RXFCON ; 
 scalar_t__ LTQ_ASC_TXFCON ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_port*) ; 
 struct ltq_uart_port* FUNC7 (struct uart_port*) ; 

__attribute__((used)) static void
FUNC8(struct uart_port *port)
{
	struct ltq_uart_port *ltq_port = FUNC7(port);
	unsigned long flags;

	ltq_port->soc->free_irq(port);

	FUNC4(&ltq_port->lock, flags);
	FUNC1(0, port->membase + LTQ_ASC_CON);
	FUNC2(ASCRXFCON_RXFEN, ASCRXFCON_RXFFLU,
		port->membase + LTQ_ASC_RXFCON);
	FUNC2(ASCTXFCON_TXFEN, ASCTXFCON_TXFFLU,
		port->membase + LTQ_ASC_TXFCON);
	FUNC5(&ltq_port->lock, flags);
	if (!FUNC0(ltq_port->clk))
		FUNC3(ltq_port->clk);
}