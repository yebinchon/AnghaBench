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
struct uart_port {scalar_t__ membase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 unsigned int STAT_BRK_DET ; 
 unsigned int STAT_FRM_ERR ; 
 unsigned int STAT_OVR_ERR ; 
 unsigned int FUNC0 (struct uart_port*) ; 
 unsigned int FUNC1 (struct uart_port*) ; 
 scalar_t__ UART_STAT ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*,unsigned int) ; 
 unsigned int FUNC4 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *dev_id)
{
	struct uart_port *port = (struct uart_port *)dev_id;
	unsigned int st = FUNC4(port->membase + UART_STAT);

	if (st & (FUNC0(port) | STAT_OVR_ERR | STAT_FRM_ERR |
		  STAT_BRK_DET))
		FUNC2(port, st);

	if (st & FUNC1(port))
		FUNC3(port, st);

	return IRQ_HANDLED;
}