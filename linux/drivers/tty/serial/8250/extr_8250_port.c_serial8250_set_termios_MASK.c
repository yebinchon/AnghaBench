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
struct uart_port {int /*<<< orphan*/  (* set_termios ) (struct uart_port*,struct ktermios*,struct ktermios*) ;} ;
struct ktermios {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uart_port*,struct ktermios*,struct ktermios*) ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*,struct ktermios*,struct ktermios*) ; 

__attribute__((used)) static void
FUNC2(struct uart_port *port, struct ktermios *termios,
		       struct ktermios *old)
{
	if (port->set_termios)
		port->set_termios(port, termios, old);
	else
		FUNC0(port, termios, old);
}