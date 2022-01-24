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
typedef  enum bp_state { ____Placeholder_bp_state } bp_state ;

/* Variables and functions */
 int BP_DONE ; 
 int BP_ECANCELED ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_USER ; 
 int /*<<< orphan*/  balloon_mutex ; 
 int /*<<< orphan*/  balloon_wq ; 
 int /*<<< orphan*/  ballooned_pages ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ xen_hotplug_unpopulated ; 

__attribute__((used)) static int FUNC7(int nr_pages)
{
	enum bp_state st;

	if (xen_hotplug_unpopulated) {
		st = FUNC4();
		if (st != BP_ECANCELED) {
			FUNC3(&balloon_mutex);
			FUNC6(balloon_wq,
				   !FUNC1(&ballooned_pages));
			FUNC2(&balloon_mutex);
			return 0;
		}
	}

	if (FUNC5() < nr_pages)
		return -ENOMEM;

	st = FUNC0(nr_pages, GFP_USER);
	if (st != BP_DONE)
		return -ENOMEM;

	return 0;
}