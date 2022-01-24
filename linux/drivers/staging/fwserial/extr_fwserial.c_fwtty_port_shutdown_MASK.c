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
struct tty_port {int dummy; } ;
struct fwtty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_fifo; scalar_t__ overrun; scalar_t__ break_ctl; scalar_t__ flags; int /*<<< orphan*/  drain; int /*<<< orphan*/  emit_breaks; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct fwtty_port* port ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct fwtty_port* FUNC5 (struct tty_port*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct tty_port *tty_port)
{
	struct fwtty_port *port = FUNC5(tty_port, port);

	/* TODO: cancel outstanding transactions */

	FUNC1(&port->emit_breaks);
	FUNC1(&port->drain);

	FUNC3(&port->lock);
	port->flags = 0;
	port->break_ctl = 0;
	port->overrun = 0;
	FUNC0(port);
	FUNC2(&port->tx_fifo);
	FUNC4(&port->lock);
}