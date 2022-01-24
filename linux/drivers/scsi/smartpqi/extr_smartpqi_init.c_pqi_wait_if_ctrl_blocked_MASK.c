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
struct pqi_ctrl_info {int /*<<< orphan*/  num_blocked_threads; int /*<<< orphan*/  block_requests_wait; } ;

/* Variables and functions */
 unsigned long NO_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (struct pqi_ctrl_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 unsigned long FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned long FUNC7(struct pqi_ctrl_info *ctrl_info,
	unsigned long timeout_msecs)
{
	unsigned long remaining_msecs;

	if (!FUNC4(ctrl_info))
		return timeout_msecs;

	FUNC1(&ctrl_info->num_blocked_threads);

	if (timeout_msecs == NO_TIMEOUT) {
		FUNC5(ctrl_info->block_requests_wait,
			!FUNC4(ctrl_info));
		remaining_msecs = timeout_msecs;
	} else {
		unsigned long remaining_jiffies;

		remaining_jiffies =
			FUNC6(ctrl_info->block_requests_wait,
				!FUNC4(ctrl_info),
				FUNC3(timeout_msecs));
		remaining_msecs = FUNC2(remaining_jiffies);
	}

	FUNC0(&ctrl_info->num_blocked_threads);

	return remaining_msecs;
}