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
struct backref_node {int /*<<< orphan*/  rb_node; int /*<<< orphan*/  lower; int /*<<< orphan*/  upper; int /*<<< orphan*/  list; } ;
struct backref_cache {int /*<<< orphan*/  nr_nodes; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_NOFS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct backref_node* FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct backref_node *FUNC3(struct backref_cache *cache)
{
	struct backref_node *node;

	node = FUNC2(sizeof(*node), GFP_NOFS);
	if (node) {
		FUNC0(&node->list);
		FUNC0(&node->upper);
		FUNC0(&node->lower);
		FUNC1(&node->rb_node);
		cache->nr_nodes++;
	}
	return node;
}