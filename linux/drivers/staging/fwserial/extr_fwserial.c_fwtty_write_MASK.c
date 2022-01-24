#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tty_struct {struct fwtty_port* driver_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  writes; } ;
struct fwtty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  drain; int /*<<< orphan*/  tx_fifo; TYPE_1__ stats; } ;

/* Variables and functions */
 int DRAIN_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct fwtty_port*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fwtty_port*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct tty_struct *tty, const unsigned char *buf, int c)
{
	struct fwtty_port *port = tty->driver_data;
	int n, len;

	FUNC3(port, "%d\n", c);
	FUNC4(port->stats.writes, c);

	FUNC7(&port->lock);
	n = FUNC1(&port->tx_fifo, buf, c);
	len = FUNC2(&port->tx_fifo);
	if (len < DRAIN_THRESHOLD)
		FUNC6(&port->drain, 1);
	FUNC8(&port->lock);

	if (len >= DRAIN_THRESHOLD)
		FUNC5(port, false);

	FUNC0(port, c, n);

	return (n < 0) ? 0 : n;
}