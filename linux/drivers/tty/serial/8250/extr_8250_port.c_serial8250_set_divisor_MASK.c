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
struct uart_port {int /*<<< orphan*/  (* set_divisor ) (struct uart_port*,unsigned int,unsigned int,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*,unsigned int,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,unsigned int,unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC2(struct uart_port *port, unsigned int baud,
				   unsigned int quot, unsigned int quot_frac)
{
	if (port->set_divisor)
		port->set_divisor(port, baud, quot, quot_frac);
	else
		FUNC0(port, baud, quot, quot_frac);
}