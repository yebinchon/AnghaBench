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
struct fwtty_port {int /*<<< orphan*/  lock; int /*<<< orphan*/  peer; } ;
struct fwtty_peer {TYPE_1__* serial; } ;
struct TYPE_2__ {struct fwtty_port** ports; } ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 struct fwtty_port* FUNC0 (int /*<<< orphan*/ ) ; 
 int num_ports ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static struct fwtty_port *FUNC6(struct fwtty_peer *peer,
					      int index)
{
	struct fwtty_port *port;

	if (index < 0 || index >= num_ports)
		return FUNC0(-EINVAL);

	/* must guarantee that previous port releases have completed */
	FUNC5();

	port = peer->serial->ports[index];
	FUNC3(&port->lock);
	if (!FUNC1(port->peer))
		FUNC2(port->peer, peer);
	else
		port = FUNC0(-EBUSY);
	FUNC4(&port->lock);

	return port;
}