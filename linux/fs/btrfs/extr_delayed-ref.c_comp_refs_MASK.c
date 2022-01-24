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
struct btrfs_delayed_ref_node {scalar_t__ type; scalar_t__ seq; } ;

/* Variables and functions */
 scalar_t__ BTRFS_SHARED_BLOCK_REF_KEY ; 
 scalar_t__ BTRFS_TREE_BLOCK_REF_KEY ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_delayed_ref_node*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_delayed_ref_node*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct btrfs_delayed_ref_node *ref1,
		     struct btrfs_delayed_ref_node *ref2,
		     bool check_seq)
{
	int ret = 0;

	if (ref1->type < ref2->type)
		return -1;
	if (ref1->type > ref2->type)
		return 1;
	if (ref1->type == BTRFS_TREE_BLOCK_REF_KEY ||
	    ref1->type == BTRFS_SHARED_BLOCK_REF_KEY)
		ret = FUNC3(FUNC1(ref1),
				     FUNC1(ref2));
	else
		ret = FUNC2(FUNC0(ref1),
				     FUNC0(ref2));
	if (ret)
		return ret;
	if (check_seq) {
		if (ref1->seq < ref2->seq)
			return -1;
		if (ref1->seq > ref2->seq)
			return 1;
	}
	return 0;
}