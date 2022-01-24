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
struct property {int dummy; } ;
struct of_drc_info {unsigned int last_drc_index; char* drc_name_prefix; char* drc_type; } ;
struct device_node {int /*<<< orphan*/  parent; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int MAX_DRC_NAME_LEN ; 
 struct property* FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (struct property*,int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC2 (struct property**,int /*<<< orphan*/  const**,struct of_drc_info*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 

__attribute__((used)) static int FUNC5(struct device_node *dn, char *drc_name,
				char *drc_type, unsigned int my_index)
{
	struct property *info;
	unsigned int entries;
	struct of_drc_info drc;
	const __be32 *value;
	char cell_drc_name[MAX_DRC_NAME_LEN];
	int j;

	info = FUNC0(dn->parent, "ibm,drc-info", NULL);
	if (info == NULL)
		return -EINVAL;

	value = FUNC1(info, NULL, &entries);
	if (!value)
		return -EINVAL;

	for (j = 0; j < entries; j++) {
		FUNC2(&info, &value, &drc);

		/* Should now know end of current entry */

		/* Found it */
		if (my_index <= drc.last_drc_index) {
			FUNC3(cell_drc_name, "%s%d", drc.drc_name_prefix,
				my_index);
			break;
		}
	}

	if (((drc_name == NULL) ||
	     (drc_name && !FUNC4(drc_name, cell_drc_name))) &&
	    ((drc_type == NULL) ||
	     (drc_type && !FUNC4(drc_type, drc.drc_type))))
		return 0;

	return -EINVAL;
}