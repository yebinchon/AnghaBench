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
struct nvmet_subsys {int /*<<< orphan*/  serial; } ;
struct config_item {int dummy; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nvmet_config_sem ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,int /*<<< orphan*/ *) ; 
 struct nvmet_subsys* FUNC2 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC4(struct config_item *item,
					      const char *page, size_t count)
{
	struct nvmet_subsys *subsys = FUNC2(item);

	FUNC0(&nvmet_config_sem);
	FUNC1(page, "%llx\n", &subsys->serial);
	FUNC3(&nvmet_config_sem);

	return count;
}