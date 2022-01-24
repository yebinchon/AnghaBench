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
struct iscsi_np {int /*<<< orphan*/  np_thread_lock; int /*<<< orphan*/  np_login_timer; int /*<<< orphan*/  np_login_timer_flags; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  ISCSI_TF_RUNNING ; 
 int /*<<< orphan*/  ISCSI_TF_STOP ; 
 int TA_LOGIN_TIMEOUT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct iscsi_np *np)
{
	/*
	 * This used the TA_LOGIN_TIMEOUT constant because at this
	 * point we do not have access to ISCSI_TPG_ATTRIB(tpg)->login_timeout
	 */
	FUNC2(&np->np_thread_lock);
	np->np_login_timer_flags &= ~ISCSI_TF_STOP;
	np->np_login_timer_flags |= ISCSI_TF_RUNNING;
	FUNC0(&np->np_login_timer, jiffies + TA_LOGIN_TIMEOUT * HZ);

	FUNC1("Added timeout timer to iSCSI login request for"
			" %u seconds.\n", TA_LOGIN_TIMEOUT);
	FUNC3(&np->np_thread_lock);
}