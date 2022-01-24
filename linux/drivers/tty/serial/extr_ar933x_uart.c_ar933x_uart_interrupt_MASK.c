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
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct ar933x_uart_port {TYPE_1__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 unsigned int AR933X_UART_CS_HOST_INT ; 
 int /*<<< orphan*/  AR933X_UART_CS_REG ; 
 int /*<<< orphan*/  AR933X_UART_INT_EN_REG ; 
 int /*<<< orphan*/  AR933X_UART_INT_REG ; 
 unsigned int AR933X_UART_INT_RX_VALID ; 
 unsigned int AR933X_UART_INT_TX_EMPTY ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 unsigned int FUNC0 (struct ar933x_uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ar933x_uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct ar933x_uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct ar933x_uart_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct ar933x_uart_port*,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC7(int irq, void *dev_id)
{
	struct ar933x_uart_port *up = dev_id;
	unsigned int status;

	status = FUNC0(up, AR933X_UART_CS_REG);
	if ((status & AR933X_UART_CS_HOST_INT) == 0)
		return IRQ_NONE;

	FUNC5(&up->port.lock);

	status = FUNC0(up, AR933X_UART_INT_REG);
	status &= FUNC0(up, AR933X_UART_INT_EN_REG);

	if (status & AR933X_UART_INT_RX_VALID) {
		FUNC4(up, AR933X_UART_INT_REG,
				  AR933X_UART_INT_RX_VALID);
		FUNC1(up);
	}

	if (status & AR933X_UART_INT_TX_EMPTY) {
		FUNC4(up, AR933X_UART_INT_REG,
				  AR933X_UART_INT_TX_EMPTY);
		FUNC2(up);
		FUNC3(up);
	}

	FUNC6(&up->port.lock);

	return IRQ_HANDLED;
}