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
struct iscsi_np {int np_login_timer_flags; int /*<<< orphan*/  np_thread_lock; scalar_t__ np_thread; int /*<<< orphan*/  np_sockaddr; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 int /*<<< orphan*/  SIGINT ; 
 struct iscsi_np* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct iscsi_np* np ; 
 int /*<<< orphan*/  np_login_timer ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(struct timer_list *t)
{
	struct iscsi_np *np = FUNC0(np, t, np_login_timer);

	FUNC3(&np->np_thread_lock);
	FUNC1("iSCSI Login timeout on Network Portal %pISpc\n",
			&np->np_sockaddr);

	if (np->np_login_timer_flags & ISCSI_TF_STOP) {
		FUNC4(&np->np_thread_lock);
		return;
	}

	if (np->np_thread)
		FUNC2(SIGINT, np->np_thread, 1);

	np->np_login_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC4(&np->np_thread_lock);
}