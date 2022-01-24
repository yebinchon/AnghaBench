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
struct nvmet_subsys {int /*<<< orphan*/  ver; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 int FUNC2 (char const*,char*,int*,int*,int*) ; 
 struct nvmet_subsys* FUNC3 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
					       const char *page, size_t count)
{
	struct nvmet_subsys *subsys = FUNC3(item);
	int major, minor, tertiary = 0;
	int ret;


	ret = FUNC2(page, "%d.%d.%d\n", &major, &minor, &tertiary);
	if (ret != 2 && ret != 3)
		return -EINVAL;

	FUNC1(&nvmet_config_sem);
	subsys->ver = FUNC0(major, minor, tertiary);
	FUNC4(&nvmet_config_sem);

	return count;
}