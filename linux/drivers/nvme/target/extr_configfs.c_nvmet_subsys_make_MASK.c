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
struct config_group {int dummy; } ;
struct nvmet_subsys {struct config_group group; struct config_group allowed_hosts_group; struct config_group namespaces_group; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct config_group* FUNC0 (struct nvmet_subsys*) ; 
 struct config_group* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nvmet_subsys*) ; 
 int /*<<< orphan*/  NVME_DISC_SUBSYS_NAME ; 
 int /*<<< orphan*/  NVME_NQN_NVME ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  nvmet_allowed_hosts_type ; 
 int /*<<< orphan*/  nvmet_namespaces_type ; 
 struct nvmet_subsys* FUNC5 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nvmet_subsys_type ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct config_group *FUNC8(struct config_group *group,
		const char *name)
{
	struct nvmet_subsys *subsys;

	if (FUNC7(name, NVME_DISC_SUBSYS_NAME)) {
		FUNC6("can't create discovery subsystem through configfs\n");
		return FUNC1(-EINVAL);
	}

	subsys = FUNC5(name, NVME_NQN_NVME);
	if (FUNC2(subsys))
		return FUNC0(subsys);

	FUNC3(&subsys->group, name, &nvmet_subsys_type);

	FUNC3(&subsys->namespaces_group,
			"namespaces", &nvmet_namespaces_type);
	FUNC4(&subsys->namespaces_group, &subsys->group);

	FUNC3(&subsys->allowed_hosts_group,
			"allowed_hosts", &nvmet_allowed_hosts_type);
	FUNC4(&subsys->allowed_hosts_group,
			&subsys->group);

	return &subsys->group;
}