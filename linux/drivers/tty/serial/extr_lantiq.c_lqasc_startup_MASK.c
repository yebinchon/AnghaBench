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
struct uart_port {scalar_t__ membase; int /*<<< orphan*/  uartclk; } ;
struct ltq_uart_port {TYPE_1__* soc; int /*<<< orphan*/  lock; int /*<<< orphan*/  freqclk; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int (* request_irq ) (struct uart_port*) ;} ;

/* Variables and functions */
 int ASCCLC_DISS ; 
 int ASCCLC_RMCMASK ; 
 int ASCCLC_RMCOFFSET ; 
 int ASCCON_FEN ; 
 int ASCCON_M_8ASYNC ; 
 int ASCCON_ROEN ; 
 int ASCCON_TOEN ; 
 int ASCRXFCON_RXFEN ; 
 int ASCRXFCON_RXFFLU ; 
 int ASCRXFCON_RXFITLMASK ; 
 int ASCRXFCON_RXFITLOFF ; 
 int ASCTXFCON_TXFEN ; 
 int ASCTXFCON_TXFFLU ; 
 int ASCTXFCON_TXFITLMASK ; 
 int ASCTXFCON_TXFITLOFF ; 
 int ASC_IRNREN_ERR ; 
 int ASC_IRNREN_RX ; 
 int ASC_IRNREN_TX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LTQ_ASC_CLC ; 
 scalar_t__ LTQ_ASC_CON ; 
 scalar_t__ LTQ_ASC_IRNREN ; 
 scalar_t__ LTQ_ASC_PISEL ; 
 scalar_t__ LTQ_ASC_RXFCON ; 
 scalar_t__ LTQ_ASC_TXFCON ; 
 int RXFIFO_FL ; 
 int TXFIFO_FL ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC7 (struct uart_port*) ; 
 struct ltq_uart_port* FUNC8 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct uart_port *port)
{
	struct ltq_uart_port *ltq_port = FUNC8(port);
	int retval;
	unsigned long flags;

	if (!FUNC0(ltq_port->clk))
		FUNC4(ltq_port->clk);
	port->uartclk = FUNC3(ltq_port->freqclk);

	FUNC5(&ltq_port->lock, flags);
	FUNC2(ASCCLC_DISS | ASCCLC_RMCMASK, (1 << ASCCLC_RMCOFFSET),
		port->membase + LTQ_ASC_CLC);

	FUNC1(0, port->membase + LTQ_ASC_PISEL);
	FUNC1(
		((TXFIFO_FL << ASCTXFCON_TXFITLOFF) & ASCTXFCON_TXFITLMASK) |
		ASCTXFCON_TXFEN | ASCTXFCON_TXFFLU,
		port->membase + LTQ_ASC_TXFCON);
	FUNC1(
		((RXFIFO_FL << ASCRXFCON_RXFITLOFF) & ASCRXFCON_RXFITLMASK)
		| ASCRXFCON_RXFEN | ASCRXFCON_RXFFLU,
		port->membase + LTQ_ASC_RXFCON);
	/* make sure other settings are written to hardware before
	 * setting enable bits
	 */
	FUNC9();
	FUNC2(0, ASCCON_M_8ASYNC | ASCCON_FEN | ASCCON_TOEN |
		ASCCON_ROEN, port->membase + LTQ_ASC_CON);

	FUNC6(&ltq_port->lock, flags);

	retval = ltq_port->soc->request_irq(port);
	if (retval)
		return retval;

	FUNC1(ASC_IRNREN_RX | ASC_IRNREN_ERR | ASC_IRNREN_TX,
		port->membase + LTQ_ASC_IRNREN);
	return retval;
}