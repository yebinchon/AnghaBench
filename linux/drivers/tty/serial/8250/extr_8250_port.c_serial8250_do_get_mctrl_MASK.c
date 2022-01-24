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
struct uart_8250_port {scalar_t__ gpios; } ;

/* Variables and functions */
 unsigned int FUNC0 (scalar_t__,unsigned int*) ; 
 unsigned int FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC3 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC4 (struct uart_8250_port*) ; 
 struct uart_8250_port* FUNC5 (struct uart_port*) ; 

unsigned int FUNC6(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC5(port);
	unsigned int status;
	unsigned int val;

	FUNC3(up);
	status = FUNC2(up);
	FUNC4(up);

	val = FUNC1(status);
	if (up->gpios)
		return FUNC0(up->gpios, &val);

	return val;
}