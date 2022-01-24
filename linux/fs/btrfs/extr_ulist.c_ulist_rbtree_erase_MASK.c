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
struct ulist_node {int /*<<< orphan*/  list; int /*<<< orphan*/  rb_node; } ;
struct ulist {scalar_t__ nnodes; int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ulist_node*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct ulist *ulist, struct ulist_node *node)
{
	FUNC3(&node->rb_node, &ulist->root);
	FUNC2(&node->list);
	FUNC1(node);
	FUNC0(ulist->nnodes == 0);
	ulist->nnodes--;
}