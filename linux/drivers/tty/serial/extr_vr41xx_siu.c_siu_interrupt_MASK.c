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
typedef  int uint8_t ;
struct uart_port {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int /*<<< orphan*/  UART_IIR ; 
 int UART_IIR_NO_INT ; 
 int /*<<< orphan*/  UART_LSR ; 
 int UART_LSR_DR ; 
 int UART_LSR_THRE ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int*) ; 
 int FUNC2 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_port*) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct uart_port *port;
	uint8_t iir, lsr;

	port = (struct uart_port *)dev_id;

	iir = FUNC2(port, UART_IIR);
	if (iir & UART_IIR_NO_INT)
		return IRQ_NONE;

	lsr = FUNC2(port, UART_LSR);
	if (lsr & UART_LSR_DR)
		FUNC1(port, &lsr);

	FUNC0(port);

	if (lsr & UART_LSR_THRE)
		FUNC3(port);

	return IRQ_HANDLED;
}