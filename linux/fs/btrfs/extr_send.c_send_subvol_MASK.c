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
struct send_ctx {int flags; scalar_t__ parent_root; int /*<<< orphan*/  send_root; } ;

/* Variables and functions */
 int BTRFS_SEND_FLAG_OMIT_STREAM_HEADER ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,struct send_ctx*) ; 
 int /*<<< orphan*/  changed_cb ; 
 int FUNC1 (struct send_ctx*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct send_ctx*) ; 
 int FUNC3 (struct send_ctx*) ; 
 int FUNC4 (struct send_ctx*) ; 
 int FUNC5 (struct send_ctx*) ; 

__attribute__((used)) static int FUNC6(struct send_ctx *sctx)
{
	int ret;

	if (!(sctx->flags & BTRFS_SEND_FLAG_OMIT_STREAM_HEADER)) {
		ret = FUNC4(sctx);
		if (ret < 0)
			goto out;
	}

	ret = FUNC5(sctx);
	if (ret < 0)
		goto out;

	if (sctx->parent_root) {
		ret = FUNC0(sctx->send_root, sctx->parent_root,
				changed_cb, sctx);
		if (ret < 0)
			goto out;
		ret = FUNC1(sctx, 1);
		if (ret < 0)
			goto out;
	} else {
		ret = FUNC3(sctx);
		if (ret < 0)
			goto out;
	}

out:
	FUNC2(sctx);
	return ret;
}