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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*,int,int,...) ; 
 struct nvmet_subsys* FUNC4 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC5(struct config_item *item,
					      char *page)
{
	struct nvmet_subsys *subsys = FUNC4(item);

	if (FUNC2(subsys->ver))
		return FUNC3(page, PAGE_SIZE, "%d.%d.%d\n",
				(int)FUNC0(subsys->ver),
				(int)FUNC1(subsys->ver),
				(int)FUNC2(subsys->ver));
	else
		return FUNC3(page, PAGE_SIZE, "%d.%d\n",
				(int)FUNC0(subsys->ver),
				(int)FUNC1(subsys->ver));
}