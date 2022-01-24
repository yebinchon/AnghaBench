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
struct uvcg_config_group_type {int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct config_group*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct config_group*,struct config_group*) ; 
 struct config_group* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct config_group*,struct uvcg_config_group_type const*) ; 

__attribute__((used)) static int FUNC4(struct config_group *parent,
				    const struct uvcg_config_group_type *type)
{
	struct config_group *group;

	group = FUNC2(sizeof(*group), GFP_KERNEL);
	if (!group)
		return -ENOMEM;

	FUNC0(group, type->name, &type->type);
	FUNC1(group, parent);

	return FUNC3(group, type);
}