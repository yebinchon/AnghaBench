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
struct device_node {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FW_FEATURE_DRC_INFO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int* FUNC1 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct device_node*,char*,char*,unsigned int const) ; 
 int FUNC3 (struct device_node*,char*,char*,unsigned int const) ; 

int FUNC4(struct device_node *dn, char *drc_name,
			char *drc_type)
{
	const unsigned int *my_index;

	my_index = FUNC1(dn, "ibm,my-drc-index", NULL);
	if (!my_index) {
		/* Node isn't DLPAR/hotplug capable */
		return -EINVAL;
	}

	if (FUNC0(FW_FEATURE_DRC_INFO))
		return FUNC3(dn, drc_name, drc_type,
						*my_index);
	else
		return FUNC2(dn, drc_name, drc_type,
						*my_index);
}