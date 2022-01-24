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
struct TYPE_2__ {scalar_t__ membase; } ;
struct timbuart_port {int /*<<< orphan*/  tasklet; TYPE_1__ port; int /*<<< orphan*/  last_ier; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 scalar_t__ TIMBUART_IER ; 
 scalar_t__ TIMBUART_IPR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *devid)
{
	struct timbuart_port *uart = (struct timbuart_port *)devid;

	if (FUNC1(uart->port.membase + TIMBUART_IPR)) {
		uart->last_ier = FUNC0(uart->port.membase + TIMBUART_IER);

		/* disable interrupts, the tasklet enables them again */
		FUNC2(0, uart->port.membase + TIMBUART_IER);

		/* fire off bottom half */
		FUNC3(&uart->tasklet);

		return IRQ_HANDLED;
	} else
		return IRQ_NONE;
}