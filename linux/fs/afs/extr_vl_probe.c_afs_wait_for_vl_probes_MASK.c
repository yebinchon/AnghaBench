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
struct afs_vlserver_list {int nr_servers; int preferred; TYPE_1__* servers; } ;
struct TYPE_4__ {unsigned int rtt; scalar_t__ responded; } ;
struct afs_vlserver {unsigned long flags; int /*<<< orphan*/  probe_wq; TYPE_2__ probe; } ;
struct TYPE_3__ {struct afs_vlserver* server; } ;

/* Variables and functions */
 int AFS_VLSERVER_FL_PROBING ; 
 int ENOMEM ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  TASK_RUNNING ; 
 unsigned int UINT_MAX ; 
 int /*<<< orphan*/  FUNC0 (int,unsigned long*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC5 (struct wait_queue_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct wait_queue_entry*) ; 
 struct wait_queue_entry* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct wait_queue_entry*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int,unsigned long*) ; 

int FUNC13(struct afs_vlserver_list *vllist,
			   unsigned long untried)
{
	struct wait_queue_entry *waits;
	struct afs_vlserver *server;
	unsigned int rtt = UINT_MAX;
	bool have_responders = false;
	int pref = -1, i;

	FUNC1("%u,%lx", vllist->nr_servers, untried);

	/* Only wait for servers that have a probe outstanding. */
	for (i = 0; i < vllist->nr_servers; i++) {
		if (FUNC12(i, &untried)) {
			server = vllist->servers[i].server;
			if (!FUNC12(AFS_VLSERVER_FL_PROBING, &server->flags))
				FUNC0(i, &untried);
			if (server->probe.responded)
				have_responders = true;
		}
	}
	if (have_responders || !untried)
		return 0;

	waits = FUNC7(FUNC4(vllist->nr_servers, sizeof(*waits)), GFP_KERNEL);
	if (!waits)
		return -ENOMEM;

	for (i = 0; i < vllist->nr_servers; i++) {
		if (FUNC12(i, &untried)) {
			server = vllist->servers[i].server;
			FUNC5(&waits[i], current);
			FUNC3(&server->probe_wq, &waits[i]);
		}
	}

	for (;;) {
		bool still_probing = false;

		FUNC10(TASK_INTERRUPTIBLE);
		for (i = 0; i < vllist->nr_servers; i++) {
			if (FUNC12(i, &untried)) {
				server = vllist->servers[i].server;
				if (server->probe.responded)
					goto stop;
				if (FUNC12(AFS_VLSERVER_FL_PROBING, &server->flags))
					still_probing = true;
			}
		}

		if (!still_probing || FUNC11(current))
			goto stop;
		FUNC9();
	}

stop:
	FUNC10(TASK_RUNNING);

	for (i = 0; i < vllist->nr_servers; i++) {
		if (FUNC12(i, &untried)) {
			server = vllist->servers[i].server;
			if (server->probe.responded &&
			    server->probe.rtt < rtt) {
				pref = i;
				rtt = server->probe.rtt;
			}

			FUNC8(&server->probe_wq, &waits[i]);
		}
	}

	FUNC6(waits);

	if (pref == -1 && FUNC11(current))
		return -ERESTARTSYS;

	if (pref >= 0)
		vllist->preferred = pref;

	FUNC2(" = 0 [%u]", pref);
	return 0;
}