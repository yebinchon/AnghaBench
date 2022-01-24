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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ops_lock ; 
 int /*<<< orphan*/  plock_dev_misc ; 
 int /*<<< orphan*/  recv_list ; 
 int /*<<< orphan*/  recv_wq ; 
 int /*<<< orphan*/  send_list ; 
 int /*<<< orphan*/  send_wq ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(void)
{
	int rv;

	FUNC4(&ops_lock);
	FUNC0(&send_list);
	FUNC0(&recv_list);
	FUNC1(&send_wq);
	FUNC1(&recv_wq);

	rv = FUNC3(&plock_dev_misc);
	if (rv)
		FUNC2("dlm_plock_init: misc_register failed %d", rv);
	return rv;
}