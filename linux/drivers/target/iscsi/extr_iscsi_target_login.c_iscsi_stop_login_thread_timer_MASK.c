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
struct iscsi_np {int np_login_timer_flags; int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  np_login_timer; } ;

/* Variables and functions */
 int ISCSI_TF_RUNNING ; 
 int ISCSI_TF_STOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct iscsi_np *np)
{
	FUNC1(&np->np_thread_lock);
	if (!(np->np_login_timer_flags & ISCSI_TF_RUNNING)) {
		FUNC2(&np->np_thread_lock);
		return;
	}
	np->np_login_timer_flags |= ISCSI_TF_STOP;
	FUNC2(&np->np_thread_lock);

	FUNC0(&np->np_login_timer);

	FUNC1(&np->np_thread_lock);
	np->np_login_timer_flags &= ~ISCSI_TF_RUNNING;
	FUNC2(&np->np_thread_lock);
}