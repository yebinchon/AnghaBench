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
struct user_evtchn {int port; int enabled; struct per_user_data* user; } ;
struct per_user_data {int /*<<< orphan*/  name; } ;
struct evtchn_close {int port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ENOMEM ; 
 int /*<<< orphan*/  EVTCHNOP_close ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct evtchn_close*) ; 
 int FUNC2 (struct per_user_data*,struct user_evtchn*) ; 
 int FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct user_evtchn*) ; 
 int /*<<< orphan*/  FUNC4 (struct per_user_data*,struct user_evtchn*) ; 
 int /*<<< orphan*/  evtchn_interrupt ; 
 int FUNC5 (int) ; 
 int FUNC6 (struct per_user_data*) ; 
 struct user_evtchn* FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct per_user_data *u, int port)
{
	struct user_evtchn *evtchn;
	struct evtchn_close close;
	int rc = 0;

	/*
	 * Ports are never reused, so every caller should pass in a
	 * unique port.
	 *
	 * (Locking not necessary because we haven't registered the
	 * interrupt handler yet, and our caller has already
	 * serialized bind operations.)
	 */

	evtchn = FUNC7(sizeof(*evtchn), GFP_KERNEL);
	if (!evtchn)
		return -ENOMEM;

	evtchn->user = u;
	evtchn->port = port;
	evtchn->enabled = true; /* start enabled */

	rc = FUNC2(u, evtchn);
	if (rc < 0)
		goto err;

	rc = FUNC6(u);
	if (rc < 0)
		goto err;

	rc = FUNC3(port, evtchn_interrupt, 0,
				       u->name, evtchn);
	if (rc < 0)
		goto err;

	rc = FUNC5(port);
	return rc;

err:
	/* bind failed, should close the port now */
	close.port = port;
	if (FUNC1(EVTCHNOP_close, &close) != 0)
		FUNC0();
	FUNC4(u, evtchn);
	return rc;
}