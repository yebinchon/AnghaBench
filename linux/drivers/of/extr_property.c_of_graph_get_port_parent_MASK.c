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
 struct device_node* FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*,char*) ; 

struct device_node *FUNC3(struct device_node *node)
{
	unsigned int depth;

	if (!node)
		return NULL;

	/*
	 * Preserve usecount for passed in node as of_get_next_parent()
	 * will do of_node_put() on it.
	 */
	FUNC1(node);

	/* Walk 3 levels up only if there is 'ports' node. */
	for (depth = 3; depth && node; depth--) {
		node = FUNC0(node);
		if (depth == 2 && !FUNC2(node, "ports"))
			break;
	}
	return node;
}