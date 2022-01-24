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
 int FUNC0 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 struct device_node* FUNC2 (struct device_node*,char*,int) ; 

__attribute__((used)) static bool FUNC3(struct device_node *src,
				  struct device_node *to_find,
				  int *index)
{
	int n_phandles, i;
	bool found = false;

	n_phandles = FUNC0(src,
						"regulator-coupled-with",
						NULL);

	for (i = 0; i < n_phandles; i++) {
		struct device_node *tmp = FUNC2(src,
					   "regulator-coupled-with", i);

		if (!tmp)
			break;

		/* found */
		if (tmp == to_find)
			found = true;

		FUNC1(tmp);

		if (found) {
			*index = i;
			break;
		}
	}

	return found;
}