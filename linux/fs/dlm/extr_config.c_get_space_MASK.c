#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct dlm_space {int dummy; } ;
struct config_item {int dummy; } ;
struct TYPE_5__ {TYPE_1__* cg_subsys; } ;
struct TYPE_4__ {int /*<<< orphan*/  su_mutex; } ;

/* Variables and functions */
 struct config_item* FUNC0 (TYPE_2__*,char*) ; 
 struct dlm_space* FUNC1 (struct config_item*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* space_list ; 

__attribute__((used)) static struct dlm_space *FUNC4(char *name)
{
	struct config_item *i;

	if (!space_list)
		return NULL;

	FUNC2(&space_list->cg_subsys->su_mutex);
	i = FUNC0(space_list, name);
	FUNC3(&space_list->cg_subsys->su_mutex);

	return FUNC1(i);
}