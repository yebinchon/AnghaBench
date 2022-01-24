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
struct btrfs_delayed_ref_node {scalar_t__ action; int ref_mod; int /*<<< orphan*/  add_list; } ;
struct btrfs_delayed_ref_head {int /*<<< orphan*/  lock; int /*<<< orphan*/  ref_add_list; int /*<<< orphan*/  ref_tree; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ BTRFS_ADD_DELAYED_REF ; 
 scalar_t__ BTRFS_DROP_DELAYED_REF ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_trans_handle*,struct btrfs_delayed_ref_root*,struct btrfs_delayed_ref_head*,struct btrfs_delayed_ref_node*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct btrfs_delayed_ref_node* FUNC8 (int /*<<< orphan*/ *,struct btrfs_delayed_ref_node*) ; 

__attribute__((used)) static int FUNC9(struct btrfs_trans_handle *trans,
			      struct btrfs_delayed_ref_root *root,
			      struct btrfs_delayed_ref_head *href,
			      struct btrfs_delayed_ref_node *ref)
{
	struct btrfs_delayed_ref_node *exist;
	int mod;
	int ret = 0;

	FUNC6(&href->lock);
	exist = FUNC8(&href->ref_tree, ref);
	if (!exist)
		goto inserted;

	/* Now we are sure we can merge */
	ret = 1;
	if (exist->action == ref->action) {
		mod = ref->ref_mod;
	} else {
		/* Need to change action */
		if (exist->ref_mod < ref->ref_mod) {
			exist->action = ref->action;
			mod = -exist->ref_mod;
			exist->ref_mod = ref->ref_mod;
			if (ref->action == BTRFS_ADD_DELAYED_REF)
				FUNC3(&exist->add_list,
					      &href->ref_add_list);
			else if (ref->action == BTRFS_DROP_DELAYED_REF) {
				FUNC0(!FUNC5(&exist->add_list));
				FUNC4(&exist->add_list);
			} else {
				FUNC0(0);
			}
		} else
			mod = -ref->ref_mod;
	}
	exist->ref_mod += mod;

	/* remove existing tail if its ref_mod is zero */
	if (exist->ref_mod == 0)
		FUNC2(trans, root, href, exist);
	FUNC7(&href->lock);
	return ret;
inserted:
	if (ref->action == BTRFS_ADD_DELAYED_REF)
		FUNC3(&ref->add_list, &href->ref_add_list);
	FUNC1(&root->num_entries);
	FUNC7(&href->lock);
	return ret;
}