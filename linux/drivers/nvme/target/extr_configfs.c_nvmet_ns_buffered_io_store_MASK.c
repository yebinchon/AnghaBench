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
struct nvmet_ns {int buffered_io; TYPE_1__* subsys; scalar_t__ enabled; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char const*,int*) ; 
 struct nvmet_ns* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_ns *ns = FUNC4(item);
	bool val;

	if (FUNC3(page, &val))
		return -EINVAL;

	FUNC0(&ns->subsys->lock);
	if (ns->enabled) {
		FUNC2("disable ns before setting buffered_io value.\n");
		FUNC1(&ns->subsys->lock);
		return -EINVAL;
	}

	ns->buffered_io = val;
	FUNC1(&ns->subsys->lock);
	return count;
}