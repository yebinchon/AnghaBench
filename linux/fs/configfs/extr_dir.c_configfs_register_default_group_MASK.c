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
struct config_item_type {int dummy; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct config_group* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,char const*,struct config_item_type const*) ; 
 int FUNC2 (struct config_group*,struct config_group*) ; 
 int /*<<< orphan*/  FUNC3 (struct config_group*) ; 
 struct config_group* FUNC4 (int,int /*<<< orphan*/ ) ; 

struct config_group *
FUNC5(struct config_group *parent_group,
				const char *name,
				const struct config_item_type *item_type)
{
	int ret;
	struct config_group *group;

	group = FUNC4(sizeof(*group), GFP_KERNEL);
	if (!group)
		return FUNC0(-ENOMEM);
	FUNC1(group, name, item_type);

	ret = FUNC2(parent_group, group);
	if (ret) {
		FUNC3(group);
		return FUNC0(ret);
	}
	return group;
}