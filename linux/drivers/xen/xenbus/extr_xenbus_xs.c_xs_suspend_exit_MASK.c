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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  xb_dev_generation_id ; 
 int /*<<< orphan*/  xs_state_enter_wq ; 
 int /*<<< orphan*/  xs_state_lock ; 
 int /*<<< orphan*/  xs_suspend_active ; 

__attribute__((used)) static void FUNC3(void)
{
	xb_dev_generation_id++;
	FUNC0(&xs_state_lock);
	xs_suspend_active--;
	FUNC1(&xs_state_lock);
	FUNC2(&xs_state_enter_wq);
}