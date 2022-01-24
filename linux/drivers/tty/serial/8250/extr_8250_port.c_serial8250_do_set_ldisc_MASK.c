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
struct uart_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; } ;
struct ktermios {scalar_t__ c_line; int /*<<< orphan*/  c_cflag; } ;

/* Variables and functions */
 scalar_t__ N_PPS ; 
 int /*<<< orphan*/  FUNC0 (struct uart_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  UPF_HARDPPS_CD ; 
 int /*<<< orphan*/  FUNC1 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct uart_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct uart_port *port, struct ktermios *termios)
{
	if (termios->c_line == N_PPS) {
		port->flags |= UPF_HARDPPS_CD;
		FUNC3(&port->lock);
		FUNC2(port);
		FUNC4(&port->lock);
	} else {
		port->flags &= ~UPF_HARDPPS_CD;
		if (!FUNC0(port, termios->c_cflag)) {
			FUNC3(&port->lock);
			FUNC1(port);
			FUNC4(&port->lock);
		}
	}
}