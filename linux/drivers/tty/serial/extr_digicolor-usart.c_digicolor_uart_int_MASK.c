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
typedef  int u8 ;
struct uart_port {scalar_t__ membase; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 scalar_t__ UA_INTFLAG_CLEAR ; 
 int UA_INT_RX ; 
 scalar_t__ UA_INT_STATUS ; 
 int UA_INT_TX ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static irqreturn_t FUNC4(int irq, void *dev_id)
{
	struct uart_port *port = dev_id;
	u8 int_status = FUNC2(port->membase + UA_INT_STATUS);

	FUNC3(UA_INT_RX | UA_INT_TX,
		       port->membase + UA_INTFLAG_CLEAR);

	if (int_status & UA_INT_RX)
		FUNC0(port);
	if (int_status & UA_INT_TX)
		FUNC1(port);

	return IRQ_HANDLED;
}