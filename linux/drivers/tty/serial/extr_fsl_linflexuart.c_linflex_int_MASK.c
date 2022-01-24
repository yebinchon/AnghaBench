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
 unsigned long LINFLEXD_UARTSR_DRFRFE ; 
 unsigned long LINFLEXD_UARTSR_DTFTFF ; 
 scalar_t__ UARTSR ; 
 int /*<<< orphan*/  FUNC0 (int,void*) ; 
 int /*<<< orphan*/  FUNC1 (int,void*) ; 
 unsigned long FUNC2 (scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct uart_port *sport = dev_id;
	unsigned long status;

	status = FUNC2(sport->membase + UARTSR);

	if (status & LINFLEXD_UARTSR_DRFRFE)
		FUNC0(irq, dev_id);
	if (status & LINFLEXD_UARTSR_DTFTFF)
		FUNC1(irq, dev_id);

	return IRQ_HANDLED;
}