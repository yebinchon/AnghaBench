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
 int /*<<< orphan*/  IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  OWL_UART_CTL ; 
 int OWL_UART_CTL_EN ; 
 int OWL_UART_CTL_RXIE ; 
 int OWL_UART_CTL_TXIE ; 
 int /*<<< orphan*/  OWL_UART_STAT ; 
 int OWL_UART_STAT_RIP ; 
 int OWL_UART_STAT_RXER ; 
 int OWL_UART_STAT_RXST ; 
 int OWL_UART_STAT_TFER ; 
 int OWL_UART_STAT_TIP ; 
 int /*<<< orphan*/  owl_uart_irq ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	u32 val;
	unsigned long flags;
	int ret;

	ret = FUNC2(port->irq, owl_uart_irq, IRQF_TRIGGER_HIGH,
			"owl-uart", port);
	if (ret)
		return ret;

	FUNC3(&port->lock, flags);

	val = FUNC0(port, OWL_UART_STAT);
	val |= OWL_UART_STAT_RIP | OWL_UART_STAT_TIP
		| OWL_UART_STAT_RXER | OWL_UART_STAT_TFER | OWL_UART_STAT_RXST;
	FUNC1(port, val, OWL_UART_STAT);

	val = FUNC0(port, OWL_UART_CTL);
	val |= OWL_UART_CTL_RXIE | OWL_UART_CTL_TXIE;
	val |= OWL_UART_CTL_EN;
	FUNC1(port, val, OWL_UART_CTL);

	FUNC4(&port->lock, flags);

	return 0;
}