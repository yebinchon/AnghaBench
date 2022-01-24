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
struct tty_struct {struct fwtty_port* driver_data; } ;
struct fwtty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_fifo; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct tty_struct *tty)
{
	struct fwtty_port *port = tty->driver_data;
	int n;

	FUNC2(&port->lock);
	n = FUNC0(&port->tx_fifo);
	FUNC3(&port->lock);

	FUNC1(port, "%d\n", n);

	return n;
}