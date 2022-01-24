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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  data_lock ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  extra_updated_completion ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(void)
{
	bool updating;
	unsigned long flags;
	unsigned long t;
	int r;

	FUNC4(&data_lock, flags);

	updating = FUNC1();

	if (!updating) {
		FUNC5(&data_lock, flags);
		return;
	}

	FUNC2(&extra_updated_completion);

	FUNC5(&data_lock, flags);

	t = FUNC3(500);
	r = FUNC6(&extra_updated_completion, t);
	if (r == 0)
		FUNC0("timeout in wait_pending_extra_info_updates\n");
}