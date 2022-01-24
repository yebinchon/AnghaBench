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
 int /*<<< orphan*/  FUNC0 (struct device_node*) ; 
 int /*<<< orphan*/  devtree_lock ; 
 scalar_t__ FUNC1 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC2 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

struct device_node *FUNC5(const struct device_node *node,
	struct device_node *prev)
{
	struct device_node *next;
	unsigned long flags;

	if (!node)
		return NULL;

	FUNC3(&devtree_lock, flags);
	next = prev ? prev->sibling : node->child;
	for (; next; next = next->sibling) {
		if (!FUNC0(next))
			continue;
		if (FUNC1(next))
			break;
	}
	FUNC2(prev);
	FUNC4(&devtree_lock, flags);
	return next;
}