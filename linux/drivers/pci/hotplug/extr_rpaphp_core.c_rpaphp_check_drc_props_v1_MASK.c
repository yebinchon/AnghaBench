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
struct device_node {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (int const) ; 
 int FUNC1 (int /*<<< orphan*/ ,int const**,int const**,int const**,int const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static int FUNC4(struct device_node *dn, char *drc_name,
				char *drc_type, unsigned int my_index)
{
	char *name_tmp, *type_tmp;
	const int *indexes, *names;
	const int *types, *domains;
	int i, rc;

	rc = FUNC1(dn->parent, &indexes, &names, &types, &domains);
	if (rc < 0) {
		return -EINVAL;
	}

	name_tmp = (char *) &names[1];
	type_tmp = (char *) &types[1];

	/* Iterate through parent properties, looking for my-drc-index */
	for (i = 0; i < FUNC0(indexes[0]); i++) {
		if ((unsigned int) indexes[i + 1] == my_index)
			break;

		name_tmp += (FUNC3(name_tmp) + 1);
		type_tmp += (FUNC3(type_tmp) + 1);
	}

	if (((drc_name == NULL) || (drc_name && !FUNC2(drc_name, name_tmp))) &&
	    ((drc_type == NULL) || (drc_type && !FUNC2(drc_type, type_tmp))))
		return 0;

	return -EINVAL;
}