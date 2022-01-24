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
struct nvmet_ns {int /*<<< orphan*/  device_path; scalar_t__ enabled; struct nvmet_subsys* subsys; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 size_t FUNC4 (char const*,char*) ; 
 struct nvmet_ns* FUNC5 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC6(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_ns *ns = FUNC5(item);
	struct nvmet_subsys *subsys = ns->subsys;
	size_t len;
	int ret;

	FUNC2(&subsys->lock);
	ret = -EBUSY;
	if (ns->enabled)
		goto out_unlock;

	ret = -EINVAL;
	len = FUNC4(page, "\n");
	if (!len)
		goto out_unlock;

	FUNC0(ns->device_path);
	ret = -ENOMEM;
	ns->device_path = FUNC1(page, len, GFP_KERNEL);
	if (!ns->device_path)
		goto out_unlock;

	FUNC3(&subsys->lock);
	return count;

out_unlock:
	FUNC3(&subsys->lock);
	return ret;
}