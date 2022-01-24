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
struct nvmet_subsys {int /*<<< orphan*/  lock; } ;
struct nvmet_ns {int /*<<< orphan*/  uuid; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct nvmet_ns* FUNC2 (struct config_item*) ; 
 scalar_t__ FUNC3 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
					  const char *page, size_t count)
{
	struct nvmet_ns *ns = FUNC2(item);
	struct nvmet_subsys *subsys = ns->subsys;
	int ret = 0;


	FUNC0(&subsys->lock);
	if (ns->enabled) {
		ret = -EBUSY;
		goto out_unlock;
	}


	if (FUNC3(page, &ns->uuid))
		ret = -EINVAL;

out_unlock:
	FUNC1(&subsys->lock);
	return ret ? ret : count;
}