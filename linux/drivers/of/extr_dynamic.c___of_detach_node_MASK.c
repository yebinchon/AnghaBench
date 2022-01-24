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
struct device_node {int /*<<< orphan*/  phandle; struct device_node* sibling; struct device_node* child; struct device_node* parent; } ;

/* Variables and functions */
 int /*<<< orphan*/  OF_DETACHED ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 

void FUNC4(struct device_node *np)
{
	struct device_node *parent;

	if (FUNC0(FUNC2(np, OF_DETACHED)))
		return;

	parent = np->parent;
	if (FUNC0(!parent))
		return;

	if (parent->child == np)
		parent->child = np->sibling;
	else {
		struct device_node *prevsib;
		for (prevsib = np->parent->child;
		     prevsib->sibling != np;
		     prevsib = prevsib->sibling)
			;
		prevsib->sibling = np->sibling;
	}

	FUNC3(np, OF_DETACHED);

	/* race with of_find_node_by_phandle() prevented by devtree_lock */
	FUNC1(np->phandle);
}