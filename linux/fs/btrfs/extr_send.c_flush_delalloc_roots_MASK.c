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
struct send_ctx {int clone_roots_cnt; TYPE_1__* clone_roots; struct btrfs_root* parent_root; } ;
struct btrfs_root {int dummy; } ;
struct TYPE_2__ {struct btrfs_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  U64_MAX ; 
 int FUNC0 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct send_ctx *sctx)
{
	struct btrfs_root *root = sctx->parent_root;
	int ret;
	int i;

	if (root) {
		ret = FUNC0(root);
		if (ret)
			return ret;
		FUNC1(root, U64_MAX, 0, U64_MAX);
	}

	for (i = 0; i < sctx->clone_roots_cnt; i++) {
		root = sctx->clone_roots[i].root;
		ret = FUNC0(root);
		if (ret)
			return ret;
		FUNC1(root, U64_MAX, 0, U64_MAX);
	}

	return 0;
}