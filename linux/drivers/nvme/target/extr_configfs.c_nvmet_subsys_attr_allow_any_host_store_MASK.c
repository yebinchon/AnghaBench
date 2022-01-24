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
struct nvmet_subsys {int allow_any_host; int /*<<< orphan*/  hosts; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 int /*<<< orphan*/  FUNC2 (struct nvmet_subsys*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*,int*) ; 
 struct nvmet_subsys* FUNC5 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC7(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_subsys *subsys = FUNC5(item);
	bool allow_any_host;
	int ret = 0;

	if (FUNC4(page, &allow_any_host))
		return -EINVAL;

	FUNC0(&nvmet_config_sem);
	if (allow_any_host && !FUNC1(&subsys->hosts)) {
		FUNC3("Can't set allow_any_host when explicit hosts are set!\n");
		ret = -EINVAL;
		goto out_unlock;
	}

	if (subsys->allow_any_host != allow_any_host) {
		subsys->allow_any_host = allow_any_host;
		FUNC2(subsys, NULL);
	}

out_unlock:
	FUNC6(&nvmet_config_sem);
	return ret ? ret : count;
}