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
 int /*<<< orphan*/  devtree_lock ; 
 struct device_node* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

struct device_node *FUNC3(const struct device_node *node)
{
	struct device_node *np;
	unsigned long flags;

	if (!node)
		return NULL;

	FUNC1(&devtree_lock, flags);
	np = FUNC0(node->parent);
	FUNC2(&devtree_lock, flags);
	return np;
}