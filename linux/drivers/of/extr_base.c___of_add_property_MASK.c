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
struct property {struct property* next; int /*<<< orphan*/  name; } ;
struct device_node {struct property* properties; } ;

/* Variables and functions */
 int EEXIST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC1(struct device_node *np, struct property *prop)
{
	struct property **next;

	prop->next = NULL;
	next = &np->properties;
	while (*next) {
		if (FUNC0(prop->name, (*next)->name) == 0)
			/* duplicate ! don't insert it */
			return -EEXIST;

		next = &(*next)->next;
	}
	*next = prop;

	return 0;
}