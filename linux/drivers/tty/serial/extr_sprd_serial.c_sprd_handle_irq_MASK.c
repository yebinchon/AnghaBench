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
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  SPRD_ICLR ; 
 int /*<<< orphan*/  SPRD_ICLR_TIMEOUT ; 
 int /*<<< orphan*/  SPRD_IMSR ; 
 unsigned int SPRD_IMSR_BREAK_DETECT ; 
 unsigned int SPRD_IMSR_RX_FIFO_FULL ; 
 unsigned int SPRD_IMSR_TIMEOUT ; 
 unsigned int SPRD_IMSR_TX_FIFO_EMPTY ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC6(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	unsigned int ims;

	FUNC2(&port->lock);

	ims = FUNC0(port, SPRD_IMSR);

	if (!ims) {
		FUNC3(&port->lock);
		return IRQ_NONE;
	}

	if (ims & SPRD_IMSR_TIMEOUT)
		FUNC1(port, SPRD_ICLR, SPRD_ICLR_TIMEOUT);

	if (ims & (SPRD_IMSR_RX_FIFO_FULL | SPRD_IMSR_BREAK_DETECT |
		   SPRD_IMSR_TIMEOUT))
		FUNC4(port);

	if (ims & SPRD_IMSR_TX_FIFO_EMPTY)
		FUNC5(port);

	FUNC3(&port->lock);

	return IRQ_HANDLED;
}