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
struct fwtty_port {int break_ctl; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  wait_tx; } ;

/* Variables and functions */
 int EINTR ; 
 long ERESTARTSYS ; 
 int /*<<< orphan*/  IN_TX ; 
 int /*<<< orphan*/  STOP_TX ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct fwtty_port*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 long FUNC9 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC10(struct tty_struct *tty, int state)
{
	struct fwtty_port *port = tty->driver_data;
	long ret;

	FUNC3(port, "%d\n", state);

	if (state == -1) {
		FUNC5(STOP_TX, &port->flags);
		ret = FUNC9(port->wait_tx,
					       !FUNC8(IN_TX, &port->flags),
					       10);
		if (ret == 0 || ret == -ERESTARTSYS) {
			FUNC1(STOP_TX, &port->flags);
			FUNC4(port);
			return -EINTR;
		}
	}

	FUNC6(&port->lock);
	port->break_ctl = (state == -1);
	FUNC0(port);
	FUNC7(&port->lock);

	if (state == 0) {
		FUNC6(&port->lock);
		FUNC2(&port->tx_fifo);
		FUNC1(STOP_TX, &port->flags);
		FUNC7(&port->lock);
	}
	return 0;
}