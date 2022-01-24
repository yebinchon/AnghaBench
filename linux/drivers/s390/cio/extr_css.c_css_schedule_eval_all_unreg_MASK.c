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
struct idset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  __unset_registered ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct idset*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cio_work_q ; 
 int /*<<< orphan*/  css_bus_type ; 
 int /*<<< orphan*/  css_eval_scheduled ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct idset*) ; 
 int /*<<< orphan*/  FUNC4 (struct idset*) ; 
 int /*<<< orphan*/  FUNC5 (struct idset*) ; 
 struct idset* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  slow_path_work ; 
 int /*<<< orphan*/  slow_subchannel_lock ; 
 int /*<<< orphan*/  slow_subchannel_set ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC10(unsigned long delay)
{
	unsigned long flags;
	struct idset *unreg_set;

	/* Find unregistered subchannels. */
	unreg_set = FUNC6();
	if (!unreg_set) {
		/* Fallback. */
		FUNC2();
		return;
	}
	FUNC4(unreg_set);
	FUNC1(&css_bus_type, NULL, unreg_set, __unset_registered);
	/* Apply to slow_subchannel_set. */
	FUNC8(&slow_subchannel_lock, flags);
	FUNC3(slow_subchannel_set, unreg_set);
	FUNC0(&css_eval_scheduled, 1);
	FUNC7(cio_work_q, &slow_path_work, delay);
	FUNC9(&slow_subchannel_lock, flags);
	FUNC5(unreg_set);
}