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
 int num_ttys ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static struct fwtty_port *FUNC4(struct fwtty_peer *peer)
{
	struct fwtty_port **ports = peer->serial->ports;
	int i;

	/* must guarantee that previous port releases have completed */
	FUNC3();

	/* TODO: implement optional GUID-to-specific port # matching */

	/* find an unattached port (but not the loopback port, if present) */
	for (i = 0; i < num_ttys; ++i) {
		FUNC1(&ports[i]->lock);
		if (!ports[i]->peer) {
			/* claim port */
			FUNC0(ports[i]->peer, peer);
			FUNC2(&ports[i]->lock);
			return ports[i];
		}
		FUNC2(&ports[i]->lock);
	}
	return NULL;
}