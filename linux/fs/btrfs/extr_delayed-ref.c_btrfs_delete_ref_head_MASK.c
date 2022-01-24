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
struct btrfs_delayed_ref_root {int /*<<< orphan*/  num_heads_ready; int /*<<< orphan*/  num_heads; int /*<<< orphan*/  num_entries; int /*<<< orphan*/  href_root; int /*<<< orphan*/  lock; } ;
struct btrfs_delayed_ref_head {scalar_t__ processing; int /*<<< orphan*/  href_node; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC4(struct btrfs_delayed_ref_root *delayed_refs,
			   struct btrfs_delayed_ref_head *head)
{
	FUNC2(&delayed_refs->lock);
	FUNC2(&head->lock);

	FUNC3(&head->href_node, &delayed_refs->href_root);
	FUNC0(&head->href_node);
	FUNC1(&delayed_refs->num_entries);
	delayed_refs->num_heads--;
	if (head->processing == 0)
		delayed_refs->num_heads_ready--;
}