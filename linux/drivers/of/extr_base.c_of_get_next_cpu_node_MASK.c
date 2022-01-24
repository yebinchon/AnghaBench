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
struct device_node {struct device_node* sibling; struct device_node* child; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct device_node*,char*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 struct device_node* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct device_node*) ; 
 scalar_t__ FUNC3 (struct device_node*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

struct device_node *FUNC7(struct device_node *prev)
{
	struct device_node *next = NULL;
	unsigned long flags;
	struct device_node *node;

	if (!prev)
		node = FUNC1("/cpus");

	FUNC5(&devtree_lock, flags);
	if (prev)
		next = prev->sibling;
	else if (node) {
		next = node->child;
		FUNC4(node);
	}
	for (; next; next = next->sibling) {
		if (!(FUNC3(next, "cpu") ||
		      FUNC0(next, "cpu")))
			continue;
		if (FUNC2(next))
			break;
	}
	FUNC4(prev);
	FUNC6(&devtree_lock, flags);
	return next;
}