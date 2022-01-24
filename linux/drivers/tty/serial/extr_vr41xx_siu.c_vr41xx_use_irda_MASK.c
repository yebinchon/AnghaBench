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
typedef  int /*<<< orphan*/  uint8_t ;
struct uart_port {int /*<<< orphan*/  lock; } ;
typedef  scalar_t__ irda_use_t ;

/* Variables and functions */
 scalar_t__ FIR_USE_IRDA ; 
 int /*<<< orphan*/  IRUSESEL ; 
 int /*<<< orphan*/  SIUIRSEL ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct uart_port* siu_uart_ports ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(irda_use_t use)
{
	struct uart_port *port;
	unsigned long flags;
	uint8_t irsel;

	port = &siu_uart_ports[0];

	FUNC2(&port->lock, flags);

	irsel = FUNC0(port, SIUIRSEL);
	if (use == FIR_USE_IRDA)
		irsel |= IRUSESEL;
	else
		irsel &= ~IRUSESEL;
	FUNC1(port, SIUIRSEL, irsel);

	FUNC3(&port->lock, flags);
}