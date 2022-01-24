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
struct uart_port {int line; } ;
struct TYPE_2__ {int /*<<< orphan*/  irq; } ;
struct sbd_port {int tx_stopped; TYPE_1__ port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_SHARED ; 
 int M_DUART_IMR_IN ; 
 int M_DUART_IMR_RX ; 
 unsigned int M_DUART_RX_EN ; 
 unsigned int M_DUART_RX_IRQ_SEL_RXFULL ; 
 unsigned int M_DUART_TX_DIS ; 
 unsigned int M_DUART_TX_IRQ_SEL_TXEMPT ; 
 int /*<<< orphan*/  R_DUART_CMD ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  R_DUART_MODE_REG_1 ; 
 unsigned int V_DUART_MISC_CMD_RESET_BREAK_INT ; 
 unsigned int FUNC2 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sbd_port*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct sbd_port*) ; 
 int /*<<< orphan*/  sbd_interrupt ; 
 int /*<<< orphan*/  FUNC5 (struct sbd_port*) ; 
 struct sbd_port* FUNC6 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct sbd_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct sbd_port*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC9(struct uart_port *uport)
{
	struct sbd_port *sport = FUNC6(uport);
	unsigned int mode1;
	int ret;

	ret = FUNC4(sport->port.irq, sbd_interrupt,
			  IRQF_SHARED, "sb1250-duart", sport);
	if (ret)
		return ret;

	/* Clear the receive FIFO.  */
	FUNC5(sport);

	/* Clear the interrupt registers.  */
	FUNC7(sport, R_DUART_CMD, V_DUART_MISC_CMD_RESET_BREAK_INT);
	FUNC3(sport, FUNC1((uport->line) % 2));

	/* Set rx/tx interrupt to FIFO available.  */
	mode1 = FUNC2(sport, R_DUART_MODE_REG_1);
	mode1 &= ~(M_DUART_RX_IRQ_SEL_RXFULL | M_DUART_TX_IRQ_SEL_TXEMPT);
	FUNC7(sport, R_DUART_MODE_REG_1, mode1);

	/* Disable tx, enable rx.  */
	FUNC7(sport, R_DUART_CMD, M_DUART_TX_DIS | M_DUART_RX_EN);
	sport->tx_stopped = 1;

	/* Enable interrupts.  */
	FUNC8(sport, FUNC0((uport->line) % 2),
		     M_DUART_IMR_IN | M_DUART_IMR_RX);

	return 0;
}