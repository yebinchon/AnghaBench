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
typedef  int /*<<< orphan*/  u32 ;
struct nvmet_subsys {int dummy; } ;
struct nvmet_ns {size_t anagrpid; int buffered_io; int /*<<< orphan*/  uuid; struct nvmet_subsys* subsys; int /*<<< orphan*/  nsid; int /*<<< orphan*/  disable_done; int /*<<< orphan*/  dev_link; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t NVMET_DEFAULT_ANA_GRPID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct nvmet_ns* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvmet_ana_group_enabled ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

struct nvmet_ns *FUNC6(struct nvmet_subsys *subsys, u32 nsid)
{
	struct nvmet_ns *ns;

	ns = FUNC3(sizeof(*ns), GFP_KERNEL);
	if (!ns)
		return NULL;

	FUNC0(&ns->dev_link);
	FUNC2(&ns->disable_done);

	ns->nsid = nsid;
	ns->subsys = subsys;

	FUNC1(&nvmet_ana_sem);
	ns->anagrpid = NVMET_DEFAULT_ANA_GRPID;
	nvmet_ana_group_enabled[ns->anagrpid]++;
	FUNC4(&nvmet_ana_sem);

	FUNC5(&ns->uuid);
	ns->buffered_io = false;

	return ns;
}