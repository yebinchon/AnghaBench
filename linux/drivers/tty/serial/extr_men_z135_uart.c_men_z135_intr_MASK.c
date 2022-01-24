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
struct uart_port {int /*<<< orphan*/  lock; scalar_t__ membase; } ;
struct men_z135_port {TYPE_1__* mdev; int /*<<< orphan*/  stat_reg; struct uart_port port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int MEN_Z135_IRQ_ID_CTI ; 
 int MEN_Z135_IRQ_ID_MST ; 
 int MEN_Z135_IRQ_ID_RDA ; 
 int MEN_Z135_IRQ_ID_RLS ; 
 int MEN_Z135_IRQ_ID_TSA ; 
 scalar_t__ MEN_Z135_STAT_REG ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct men_z135_port*) ; 
 int /*<<< orphan*/  FUNC6 (struct men_z135_port*) ; 
 int /*<<< orphan*/  FUNC7 (struct men_z135_port*) ; 
 int /*<<< orphan*/  FUNC8 (struct men_z135_port*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *data)
{
	struct men_z135_port *uart = (struct men_z135_port *)data;
	struct uart_port *port = &uart->port;
	bool handled = false;
	int irq_id;

	uart->stat_reg = FUNC3(port->membase + MEN_Z135_STAT_REG);
	irq_id = FUNC0(uart->stat_reg);

	if (!irq_id)
		goto out;

	FUNC9(&port->lock);
	/* It's save to write to IIR[7:6] RXC[9:8] */
	FUNC4(irq_id, port->membase + MEN_Z135_STAT_REG);

	if (irq_id & MEN_Z135_IRQ_ID_RLS) {
		FUNC5(uart);
		handled = true;
	}

	if (irq_id & (MEN_Z135_IRQ_ID_RDA | MEN_Z135_IRQ_ID_CTI)) {
		if (irq_id & MEN_Z135_IRQ_ID_CTI)
			FUNC2(&uart->mdev->dev, "Character Timeout Indication\n");
		FUNC7(uart);
		handled = true;
	}

	if (irq_id & MEN_Z135_IRQ_ID_TSA) {
		FUNC8(uart);
		handled = true;
	}

	if (irq_id & MEN_Z135_IRQ_ID_MST) {
		FUNC6(uart);
		handled = true;
	}

	FUNC10(&port->lock);
out:
	return FUNC1(handled);
}