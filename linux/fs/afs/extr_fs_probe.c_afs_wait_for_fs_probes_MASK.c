#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct wait_queue_entry {int dummy; } ;
struct afs_server_list {int nr_servers; int preferred; TYPE_1__* servers; } ;
struct TYPE_4__ {unsigned int rtt; scalar_t__ responded; } ;
struct afs_server {unsigned long flags; int /*<<< orphan*/  probe_wq; TYPE_2__ probe; } ;
struct TYPE_3__ {struct afs_server* server; } ;

/* Variables and functions */
 int AFS_SERVER_FL_PROBING ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC4 (struct wait_queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct wait_queue_entry*) ; 
 struct wait_queue_entry* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int,unsigned long*) ; 

int FUNC12(struct afs_server_list *slist, unsigned long untried)
{
	struct wait_queue_entry *waits;
	struct afs_server *server;
	unsigned int rtt = UINT_MAX;
	bool have_responders = false;
	int pref = -1, i;

	FUNC1("%u,%lx", slist->nr_servers, untried);

	/* Only wait for servers that have a probe outstanding. */
	for (i = 0; i < slist->nr_servers; i++) {
		if (FUNC11(i, &untried)) {
			server = slist->servers[i].server;
			if (!FUNC11(AFS_SERVER_FL_PROBING, &server->flags))
				FUNC0(i, &untried);
			if (server->probe.responded)
				have_responders = true;
		}
	}
	if (have_responders || !untried)
		return 0;

	waits = FUNC6(FUNC3(slist->nr_servers, sizeof(*waits)), GFP_KERNEL);
	if (!waits)
		return -ENOMEM;

	for (i = 0; i < slist->nr_servers; i++) {
		if (FUNC11(i, &untried)) {
			server = slist->servers[i].server;
			FUNC4(&waits[i], current);
			FUNC2(&server->probe_wq, &waits[i]);
		}
	}

	for (;;) {
		bool still_probing = false;

		FUNC9(TASK_INTERRUPTIBLE);
		for (i = 0; i < slist->nr_servers; i++) {
			if (FUNC11(i, &untried)) {
				server = slist->servers[i].server;
				if (server->probe.responded)
					goto stop;
				if (FUNC11(AFS_SERVER_FL_PROBING, &server->flags))
					still_probing = true;
			}
		}

		if (!still_probing || FUNC10(current))
			goto stop;
		FUNC8();
	}

stop:
	FUNC9(TASK_RUNNING);

	for (i = 0; i < slist->nr_servers; i++) {
		if (FUNC11(i, &untried)) {
			server = slist->servers[i].server;
			if (server->probe.responded &&
			    server->probe.rtt < rtt) {
				pref = i;
				rtt = server->probe.rtt;
			}

			FUNC7(&server->probe_wq, &waits[i]);
		}
	}

	FUNC5(waits);

	if (pref == -1 && FUNC10(current))
		return -ERESTARTSYS;

	if (pref >= 0)
		slist->preferred = pref;
	return 0;
}