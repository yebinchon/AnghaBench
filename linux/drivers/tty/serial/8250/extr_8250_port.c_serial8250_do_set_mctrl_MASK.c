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
struct uart_port {int dummy; } ;
struct uart_8250_port {unsigned char mcr_mask; unsigned char mcr_force; unsigned char mcr; } ;

/* Variables and functions */
 unsigned char FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*,unsigned char) ; 
 struct uart_8250_port* FUNC2 (struct uart_port*) ; 

void FUNC3(struct uart_port *port, unsigned int mctrl)
{
	struct uart_8250_port *up = FUNC2(port);
	unsigned char mcr;

	mcr = FUNC0(mctrl);

	mcr = (mcr & up->mcr_mask) | up->mcr_force | up->mcr;

	FUNC1(up, mcr);
}