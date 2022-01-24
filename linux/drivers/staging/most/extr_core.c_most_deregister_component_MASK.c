#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct core_component {int /*<<< orphan*/  name; int /*<<< orphan*/  list; } ;
struct TYPE_2__ {int /*<<< orphan*/  bus; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct core_component*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  disconnect_channels ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__ mc ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

int FUNC4(struct core_component *comp)
{
	if (!comp) {
		FUNC2("Bad component\n");
		return -EINVAL;
	}

	FUNC0(&mc.bus, NULL, comp, disconnect_channels);
	FUNC1(&comp->list);
	FUNC3("deregistering component %s\n", comp->name);
	return 0;
}