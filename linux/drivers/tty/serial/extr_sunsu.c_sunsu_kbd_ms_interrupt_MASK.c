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
struct uart_sunsu_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  UART_IIR ; 
 int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 unsigned char UART_LSR_BI ; 
 unsigned char UART_LSR_DR ; 
 int /*<<< orphan*/  FUNC0 (struct uart_sunsu_port*,int) ; 
 int FUNC1 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC2 (struct uart_sunsu_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static irqreturn_t FUNC3(int irq, void *dev_id)
{
	struct uart_sunsu_port *up = dev_id;

	if (!(FUNC1(up, UART_IIR) & UART_IIR_NO_INT)) {
		unsigned char status = FUNC2(up, UART_LSR);

		if ((status & UART_LSR_DR) || (status & UART_LSR_BI))
			FUNC0(up, (status & UART_LSR_BI) != 0);
	}

	return IRQ_HANDLED;
}