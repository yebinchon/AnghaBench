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
struct btrfs_delayed_root {int /*<<< orphan*/  prepare_list; int /*<<< orphan*/  node_list; int /*<<< orphan*/  wait; int /*<<< orphan*/  lock; scalar_t__ nodes; int /*<<< orphan*/  items_seq; int /*<<< orphan*/  items; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(
				struct btrfs_delayed_root *delayed_root)
{
	FUNC1(&delayed_root->items, 0);
	FUNC1(&delayed_root->items_seq, 0);
	delayed_root->nodes = 0;
	FUNC3(&delayed_root->lock);
	FUNC2(&delayed_root->wait);
	FUNC0(&delayed_root->node_list);
	FUNC0(&delayed_root->prepare_list);
}