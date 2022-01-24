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
struct uart_8250_port {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  UART_IIR ; 
 int FUNC0 (struct uart_port*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_8250_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_8250_port*) ; 
 unsigned int FUNC3 (struct uart_port*,int /*<<< orphan*/ ) ; 
 struct uart_8250_port* FUNC4 (struct uart_port*) ; 

__attribute__((used)) static int FUNC5(struct uart_port *port)
{
	struct uart_8250_port *up = FUNC4(port);
	unsigned int iir;
	int ret;

	FUNC1(up);

	iir = FUNC3(port, UART_IIR);
	ret = FUNC0(port, iir);

	FUNC2(up);
	return ret;
}