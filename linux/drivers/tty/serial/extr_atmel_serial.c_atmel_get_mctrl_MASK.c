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
typedef  int /*<<< orphan*/  u_int ;
struct uart_port {int dummy; } ;
struct atmel_uart_port {int /*<<< orphan*/  gpios; } ;

/* Variables and functions */
 int /*<<< orphan*/  ATMEL_US_CSR ; 
 unsigned int ATMEL_US_CTS ; 
 unsigned int ATMEL_US_DCD ; 
 unsigned int ATMEL_US_DSR ; 
 unsigned int ATMEL_US_RI ; 
 unsigned int TIOCM_CD ; 
 unsigned int TIOCM_CTS ; 
 unsigned int TIOCM_DSR ; 
 unsigned int TIOCM_RI ; 
 unsigned int FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int*) ; 
 struct atmel_uart_port* FUNC2 (struct uart_port*) ; 

__attribute__((used)) static u_int FUNC3(struct uart_port *port)
{
	struct atmel_uart_port *atmel_port = FUNC2(port);
	unsigned int ret = 0, status;

	status = FUNC0(port, ATMEL_US_CSR);

	/*
	 * The control signals are active low.
	 */
	if (!(status & ATMEL_US_DCD))
		ret |= TIOCM_CD;
	if (!(status & ATMEL_US_CTS))
		ret |= TIOCM_CTS;
	if (!(status & ATMEL_US_DSR))
		ret |= TIOCM_DSR;
	if (!(status & ATMEL_US_RI))
		ret |= TIOCM_RI;

	return FUNC1(atmel_port->gpios, &ret);
}