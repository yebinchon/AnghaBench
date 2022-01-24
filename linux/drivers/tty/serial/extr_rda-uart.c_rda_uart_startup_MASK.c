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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQF_NO_SUSPEND ; 
 int /*<<< orphan*/  RDA_UART_CTRL ; 
 int RDA_UART_ENABLE ; 
 int /*<<< orphan*/  RDA_UART_IRQ_MASK ; 
 int RDA_UART_RX_DATA_AVAILABLE ; 
 int RDA_UART_RX_TIMEOUT ; 
 int /*<<< orphan*/  rda_interrupt ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	unsigned long flags;
	int ret;
	u32 val;

	FUNC3(&port->lock, flags);
	FUNC1(port, 0, RDA_UART_IRQ_MASK);
	FUNC4(&port->lock, flags);

	ret = FUNC2(port->irq, rda_interrupt, IRQF_NO_SUSPEND,
			  "rda-uart", port);
	if (ret)
		return ret;

	FUNC3(&port->lock, flags);

	val = FUNC0(port, RDA_UART_CTRL);
	val |= RDA_UART_ENABLE;
	FUNC1(port, val, RDA_UART_CTRL);

	/* enable rx interrupt */
	val = FUNC0(port, RDA_UART_IRQ_MASK);
	val |= (RDA_UART_RX_DATA_AVAILABLE | RDA_UART_RX_TIMEOUT);
	FUNC1(port, val, RDA_UART_IRQ_MASK);

	FUNC4(&port->lock, flags);

	return 0;
}