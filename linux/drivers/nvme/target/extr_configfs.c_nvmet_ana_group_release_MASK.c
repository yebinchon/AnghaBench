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
struct nvmet_ana_group {size_t grpid; TYPE_1__* port; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/ * ana_state; struct nvmet_ana_group ana_default_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  NVME_ANA_INACCESSIBLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nvmet_ana_group*) ; 
 int /*<<< orphan*/ * nvmet_ana_group_enabled ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct nvmet_ana_group* FUNC3 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct config_item *item)
{
	struct nvmet_ana_group *grp = FUNC3(item);

	if (grp == &grp->port->ana_default_group)
		return;

	FUNC0(&nvmet_ana_sem);
	grp->port->ana_state[grp->grpid] = NVME_ANA_INACCESSIBLE;
	nvmet_ana_group_enabled[grp->grpid]--;
	FUNC4(&nvmet_ana_sem);

	FUNC2(grp->port);
	FUNC1(grp);
}