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
struct uvcg_streaming_class_group {char* name; int /*<<< orphan*/  group; } ;
struct config_group {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (char const* const*) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct config_group*) ; 
 struct uvcg_streaming_class_group* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  uvcg_streaming_class_type ; 

__attribute__((used)) static int FUNC4(struct config_group *parent)
{
	static const char * const names[] = { "fs", "hs", "ss" };
	unsigned int i;

	for (i = 0; i < FUNC0(names); ++i) {
		struct uvcg_streaming_class_group *group;

		group = FUNC3(sizeof(*group), GFP_KERNEL);
		if (!group)
			return -ENOMEM;

		group->name = names[i];

		FUNC1(&group->group, group->name,
					    &uvcg_streaming_class_type);
		FUNC2(&group->group, parent);
	}

	return 0;
}