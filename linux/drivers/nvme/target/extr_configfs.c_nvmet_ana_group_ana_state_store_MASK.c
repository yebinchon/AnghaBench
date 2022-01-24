#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct nvmet_ana_group {size_t grpid; TYPE_1__* port; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  state; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {int /*<<< orphan*/ * ana_state; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_ana_chgcnt ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 TYPE_2__* nvmet_ana_state_names ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 struct nvmet_ana_group* FUNC5 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_ana_group *grp = FUNC5(item);
	int i;

	for (i = 0; i < FUNC0(nvmet_ana_state_names); i++) {
		if (FUNC4(page, nvmet_ana_state_names[i].name))
			goto found;
	}

	FUNC3("Invalid value '%s' for ana_state\n", page);
	return -EINVAL;

found:
	FUNC1(&nvmet_ana_sem);
	grp->port->ana_state[grp->grpid] = nvmet_ana_state_names[i].state;
	nvmet_ana_chgcnt++;
	FUNC6(&nvmet_ana_sem);

	FUNC2(grp->port);
	return count;
}