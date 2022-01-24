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
struct fwtty_port {int /*<<< orphan*/  tx_fifo; int /*<<< orphan*/  drain; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwtty_port*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fwtty_port *port)
{
	int len, avail;

	len = FUNC1(&port->tx_fifo);
	if (len)
		FUNC3(&port->drain, 0);
	avail = FUNC0(&port->tx_fifo);

	FUNC2(port, "fifo len: %d avail: %d\n", len, avail);
}