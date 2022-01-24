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
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_delayed_ref_root {int /*<<< orphan*/  num_entries; } ;
struct btrfs_delayed_ref_node {scalar_t__ in_tree; int /*<<< orphan*/  add_list; int /*<<< orphan*/  ref_node; } ;
struct btrfs_delayed_ref_head {int /*<<< orphan*/  ref_tree; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_delayed_ref_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC7(struct btrfs_trans_handle *trans,
				    struct btrfs_delayed_ref_root *delayed_refs,
				    struct btrfs_delayed_ref_head *head,
				    struct btrfs_delayed_ref_node *ref)
{
	FUNC5(&head->lock);
	FUNC6(&ref->ref_node, &head->ref_tree);
	FUNC0(&ref->ref_node);
	if (!FUNC4(&ref->add_list))
		FUNC3(&ref->add_list);
	ref->in_tree = 0;
	FUNC2(ref);
	FUNC1(&delayed_refs->num_entries);
}