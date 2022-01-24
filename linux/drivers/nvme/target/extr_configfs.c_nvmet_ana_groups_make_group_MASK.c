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
typedef  int u32 ;
struct nvmet_port {int dummy; } ;
struct config_group {int /*<<< orphan*/  cg_item; } ;
struct nvmet_ana_group {int grpid; struct config_group group; struct nvmet_port* port; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NVMET_MAX_ANAGRPS ; 
 struct nvmet_port* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ,int*) ; 
 struct nvmet_ana_group* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvmet_ana_group_enabled ; 
 int /*<<< orphan*/  nvmet_ana_group_type ; 
 int /*<<< orphan*/  nvmet_ana_sem ; 
 int /*<<< orphan*/  FUNC6 (struct nvmet_port*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct config_group *FUNC8(
		struct config_group *group, const char *name)
{
	struct nvmet_port *port = FUNC1(&group->cg_item);
	struct nvmet_ana_group *grp;
	u32 grpid;
	int ret;

	ret = FUNC4(name, 0, &grpid);
	if (ret)
		goto out;

	ret = -EINVAL;
	if (grpid <= 1 || grpid > NVMET_MAX_ANAGRPS)
		goto out;

	ret = -ENOMEM;
	grp = FUNC5(sizeof(*grp), GFP_KERNEL);
	if (!grp)
		goto out;
	grp->port = port;
	grp->grpid = grpid;

	FUNC3(&nvmet_ana_sem);
	nvmet_ana_group_enabled[grpid]++;
	FUNC7(&nvmet_ana_sem);

	FUNC6(grp->port);

	FUNC2(&grp->group, name, &nvmet_ana_group_type);
	return &grp->group;
out:
	return FUNC0(ret);
}