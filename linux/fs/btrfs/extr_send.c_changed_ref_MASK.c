#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct send_ctx {scalar_t__ cur_ino; int /*<<< orphan*/  cur_inode_new_gen; TYPE_1__* cmp_key; } ;
typedef  enum btrfs_compare_tree_result { ____Placeholder_btrfs_compare_tree_result } btrfs_compare_tree_result ;
struct TYPE_2__ {scalar_t__ objectid; } ;

/* Variables and functions */
 int BTRFS_COMPARE_TREE_CHANGED ; 
 int BTRFS_COMPARE_TREE_DELETED ; 
 int BTRFS_COMPARE_TREE_NEW ; 
 scalar_t__ BTRFS_FIRST_FREE_OBJECTID ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct send_ctx*,int,char*) ; 
 int FUNC1 (struct send_ctx*) ; 
 int FUNC2 (struct send_ctx*) ; 
 int FUNC3 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC4(struct send_ctx *sctx,
		       enum btrfs_compare_tree_result result)
{
	int ret = 0;

	if (sctx->cur_ino != sctx->cmp_key->objectid) {
		FUNC0(sctx, result, "reference");
		return -EIO;
	}

	if (!sctx->cur_inode_new_gen &&
	    sctx->cur_ino != BTRFS_FIRST_FREE_OBJECTID) {
		if (result == BTRFS_COMPARE_TREE_NEW)
			ret = FUNC3(sctx);
		else if (result == BTRFS_COMPARE_TREE_DELETED)
			ret = FUNC2(sctx);
		else if (result == BTRFS_COMPARE_TREE_CHANGED)
			ret = FUNC1(sctx);
	}

	return ret;
}