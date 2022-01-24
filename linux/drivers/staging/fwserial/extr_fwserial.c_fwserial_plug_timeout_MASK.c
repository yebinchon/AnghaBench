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
struct timer_list {int dummy; } ;
struct fwtty_port {int dummy; } ;
struct fwtty_peer {scalar_t__ state; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 scalar_t__ FWPS_PLUG_PENDING ; 
 struct fwtty_peer* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwtty_port*,int) ; 
 struct fwtty_peer* peer ; 
 struct fwtty_port* FUNC2 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void FUNC5(struct timer_list *t)
{
	struct fwtty_peer *peer = FUNC0(peer, t, timer);
	struct fwtty_port *port;

	FUNC3(&peer->lock);
	if (peer->state != FWPS_PLUG_PENDING) {
		FUNC4(&peer->lock);
		return;
	}

	port = FUNC2(peer);
	FUNC4(&peer->lock);

	if (port)
		FUNC1(port, false);
}