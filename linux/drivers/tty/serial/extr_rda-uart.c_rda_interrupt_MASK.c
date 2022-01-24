#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  RDA_UART_IRQ_CAUSE ; 
 int /*<<< orphan*/  RDA_UART_IRQ_MASK ; 
 int RDA_UART_RX_DATA_AVAILABLE ; 
 int RDA_UART_RX_TIMEOUT ; 
 int RDA_UART_TX_DATA_NEEDED ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned long flags;
	u32 val, irq_mask;

	FUNC4(&port->lock, flags);

	/* Clear IRQ cause */
	val = FUNC0(port, RDA_UART_IRQ_CAUSE);
	FUNC3(port, val, RDA_UART_IRQ_CAUSE);

	if (val & (RDA_UART_RX_DATA_AVAILABLE | RDA_UART_RX_TIMEOUT))
		FUNC1(port);

	if (val & (RDA_UART_TX_DATA_NEEDED)) {
		irq_mask = FUNC0(port, RDA_UART_IRQ_MASK);
		irq_mask &= ~RDA_UART_TX_DATA_NEEDED;
		FUNC3(port, irq_mask, RDA_UART_IRQ_MASK);

		FUNC2(port);
	}

	FUNC5(&port->lock, flags);

	return IRQ_HANDLED;
}