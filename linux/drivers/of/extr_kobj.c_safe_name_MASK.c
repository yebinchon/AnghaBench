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
struct kobject {int /*<<< orphan*/  sd; } ;
struct kernfs_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (struct kobject*) ; 
 char* FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,char const*) ; 
 struct kernfs_node* FUNC5 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (struct kernfs_node*) ; 

__attribute__((used)) static const char *FUNC7(struct kobject *kobj, const char *orig_name)
{
	const char *name = orig_name;
	struct kernfs_node *kn;
	int i = 0;

	/* don't be a hero. After 16 tries give up */
	while (i < 16 && (kn = FUNC5(kobj->sd, name))) {
		FUNC6(kn);
		if (name != orig_name)
			FUNC1(name);
		name = FUNC0(GFP_KERNEL, "%s#%i", orig_name, ++i);
	}

	if (name == orig_name) {
		name = FUNC3(orig_name, GFP_KERNEL);
	} else {
		FUNC4("Duplicate name in %s, renamed to \"%s\"\n",
			FUNC2(kobj), name);
	}
	return name;
}