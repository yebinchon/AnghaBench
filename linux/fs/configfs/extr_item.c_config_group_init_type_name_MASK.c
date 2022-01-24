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
struct config_item_type {int dummy; } ;
struct TYPE_2__ {struct config_item_type const* ci_type; } ;
struct config_group {TYPE_1__ cg_item; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct config_group*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*) ; 

void FUNC2(struct config_group *group, const char *name,
			 const struct config_item_type *type)
{
	FUNC1(&group->cg_item, "%s", name);
	group->cg_item.ci_type = type;
	FUNC0(group);
}