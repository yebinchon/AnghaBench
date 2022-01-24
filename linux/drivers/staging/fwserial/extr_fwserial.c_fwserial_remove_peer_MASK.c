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
struct fwtty_port {int dummy; } ;
struct fwtty_peer {int /*<<< orphan*/  lock; scalar_t__ guid; int /*<<< orphan*/  unit; int /*<<< orphan*/  list; struct fwtty_port* port; int /*<<< orphan*/  timer; TYPE_1__* serial; int /*<<< orphan*/  work; int /*<<< orphan*/  connect; } ;
struct TYPE_2__ {struct fwtty_peer* self; } ;

/* Variables and functions */
 int /*<<< orphan*/  FWPS_GONE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fwtty_port*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC5 (struct fwtty_peer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fwtty_peer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 () ; 

__attribute__((used)) static void FUNC11(struct fwtty_peer *peer)
{
	struct fwtty_port *port;

	FUNC8(&peer->lock);
	FUNC7(peer, FWPS_GONE);
	FUNC9(&peer->lock);

	FUNC0(&peer->connect);
	FUNC1(&peer->work);

	FUNC8(&peer->lock);
	/* if this unit is the local unit, clear link */
	if (peer == peer->serial->self)
		peer->serial->self = NULL;

	/* cancel the request timeout timer (if running) */
	FUNC2(&peer->timer);

	port = peer->port;
	peer->port = NULL;

	FUNC6(&peer->list);

	FUNC4(&peer->unit, "peer removed (guid:%016llx)\n",
		   (unsigned long long)peer->guid);

	FUNC9(&peer->lock);

	if (port)
		FUNC3(port, true);

	FUNC10();
	FUNC5(peer);
}