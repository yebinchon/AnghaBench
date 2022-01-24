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
struct config_item {int /*<<< orphan*/ * ci_parent; struct config_group* ci_group; int /*<<< orphan*/  ci_entry; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct config_item *item)
{
	struct config_group *group;

	group = item->ci_group;
	if (group) {
		FUNC2(&item->ci_entry);

		item->ci_group = NULL;
		item->ci_parent = NULL;

		/* Drop the reference for ci_entry */
		FUNC1(item);

		/* Drop the reference for ci_parent */
		FUNC0(group);
	}
}