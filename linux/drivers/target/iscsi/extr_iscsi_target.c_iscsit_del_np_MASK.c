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
struct iscsi_np {int enabled; TYPE_1__* np_transport; int /*<<< orphan*/  np_sockaddr; int /*<<< orphan*/  np_list; int /*<<< orphan*/ * np_thread; int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  np_thread_state; scalar_t__ np_exports; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; int /*<<< orphan*/  (* iscsit_free_np ) (struct iscsi_np*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ISCSI_NP_THREAD_SHUTDOWN ; 
 int /*<<< orphan*/  SIGINT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct iscsi_np*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  np_lock ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct iscsi_np*) ; 

int FUNC11(struct iscsi_np *np)
{
	FUNC8(&np->np_thread_lock);
	np->np_exports--;
	if (np->np_exports) {
		np->enabled = true;
		FUNC9(&np->np_thread_lock);
		return 0;
	}
	np->np_thread_state = ISCSI_NP_THREAD_SHUTDOWN;
	FUNC9(&np->np_thread_lock);

	if (np->np_thread) {
		/*
		 * We need to send the signal to wakeup Linux/Net
		 * which may be sleeping in sock_accept()..
		 */
		FUNC7(SIGINT, np->np_thread, 1);
		FUNC2(np->np_thread);
		np->np_thread = NULL;
	}

	np->np_transport->iscsit_free_np(np);

	FUNC4(&np_lock);
	FUNC3(&np->np_list);
	FUNC5(&np_lock);

	FUNC6("CORE[0] - Removed Network Portal: %pISpc on %s\n",
		&np->np_sockaddr, np->np_transport->name);

	FUNC0(np->np_transport);
	FUNC1(np);
	return 0;
}