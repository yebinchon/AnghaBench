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

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * ap_poll_kthread ; 
 int /*<<< orphan*/  ap_poll_thread ; 
 int /*<<< orphan*/  ap_poll_thread_mutex ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	int rc;

	if (FUNC1() || ap_poll_kthread)
		return 0;
	FUNC3(&ap_poll_thread_mutex);
	ap_poll_kthread = FUNC2(ap_poll_thread, NULL, "appoll");
	rc = FUNC0(ap_poll_kthread);
	if (rc)
		ap_poll_kthread = NULL;
	FUNC4(&ap_poll_thread_mutex);
	return rc;
}