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
typedef  scalar_t__ u32 ;
struct nvmet_subsys {int /*<<< orphan*/  subsysnqn; } ;
struct config_group {int /*<<< orphan*/  cg_item; } ;
struct nvmet_ns {struct config_group group; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 scalar_t__ NVME_NSID_ALL ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ ,scalar_t__*) ; 
 struct nvmet_subsys* FUNC3 (int /*<<< orphan*/ *) ; 
 struct nvmet_ns* FUNC4 (struct nvmet_subsys*,scalar_t__) ; 
 int /*<<< orphan*/  nvmet_ns_type ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct config_group *FUNC7(struct config_group *group,
		const char *name)
{
	struct nvmet_subsys *subsys = FUNC3(&group->cg_item);
	struct nvmet_ns *ns;
	int ret;
	u32 nsid;

	ret = FUNC2(name, 0, &nsid);
	if (ret)
		goto out;

	ret = -EINVAL;
	if (nsid == 0 || nsid == NVME_NSID_ALL) {
		FUNC5("invalid nsid %#x", nsid);
		goto out;
	}

	ret = -ENOMEM;
	ns = FUNC4(subsys, nsid);
	if (!ns)
		goto out;
	FUNC1(&ns->group, name, &nvmet_ns_type);

	FUNC6("adding nsid %d to subsystem %s\n", nsid, subsys->subsysnqn);

	return &ns->group;
out:
	return FUNC0(ret);
}