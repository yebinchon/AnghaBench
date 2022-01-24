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
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 struct nvmet_subsys* FUNC1 (struct config_item*) ; 

__attribute__((used)) static ssize_t FUNC2(struct config_item *item,
					     char *page)
{
	struct nvmet_subsys *subsys = FUNC1(item);

	return FUNC0(page, PAGE_SIZE, "%llx\n", subsys->serial);
}