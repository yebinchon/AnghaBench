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
struct nvmet_ns {int dummy; } ;
struct config_item {int dummy; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct nvmet_ns*) ; 
 int FUNC1 (struct nvmet_ns*) ; 
 scalar_t__ FUNC2 (char const*,int*) ; 
 struct nvmet_ns* FUNC3 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
		const char *page, size_t count)
{
	struct nvmet_ns *ns = FUNC3(item);
	bool enable;
	int ret = 0;

	if (FUNC2(page, &enable))
		return -EINVAL;

	if (enable)
		ret = FUNC1(ns);
	else
		FUNC0(ns);

	return ret ? ret : count;
}