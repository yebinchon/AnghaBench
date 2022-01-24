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
 int /*<<< orphan*/  ASC_INTEN ; 
 int ASC_INTEN_THE ; 
 int /*<<< orphan*/  ASC_STA ; 
 int ASC_STA_RBF ; 
 int ASC_STA_THE ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC5(int irq, void *ptr)
{
	struct uart_port *port = ptr;
	u32 status;

	FUNC3(&port->lock);

	status = FUNC0(port, ASC_STA);

	if (status & ASC_STA_RBF) {
		/* Receive FIFO not empty */
		FUNC1(port);
	}

	if ((status & ASC_STA_THE) &&
	    (FUNC0(port, ASC_INTEN) & ASC_INTEN_THE)) {
		/* Transmitter FIFO at least half empty */
		FUNC2(port);
	}

	FUNC4(&port->lock);

	return IRQ_HANDLED;
}