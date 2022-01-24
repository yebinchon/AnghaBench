#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  lock; TYPE_1__* state; } ;
struct uart_sunsu_port {TYPE_2__ port; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_3__ {int /*<<< orphan*/  port; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UART_IIR ; 
 int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_DR ; 
 unsigned char UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_sunsu_port*,unsigned char*) ; 
 int FUNC2 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC3 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (struct uart_sunsu_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC8(int irq, void *dev_id)
{
	struct uart_sunsu_port *up = dev_id;
	unsigned long flags;
	unsigned char status;

	FUNC4(&up->port.lock, flags);

	do {
		status = FUNC3(up, UART_LSR);
		if (status & UART_LSR_DR)
			FUNC1(up, &status);
		FUNC0(up);
		if (status & UART_LSR_THRE)
			FUNC6(up);

		FUNC5(&up->port.lock, flags);

		FUNC7(&up->port.state->port);

		FUNC4(&up->port.lock, flags);

	} while (!(FUNC2(up, UART_IIR) & UART_IIR_NO_INT));

	FUNC5(&up->port.lock, flags);

	return IRQ_HANDLED;
}