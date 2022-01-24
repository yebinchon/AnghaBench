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
typedef  scalar_t__ u64 ;
struct fs_path {int /*<<< orphan*/  start; } ;
struct find_ref_ctx {scalar_t__ dir; scalar_t__ dir_gen; int found_idx; int /*<<< orphan*/  root; struct fs_path* name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct fs_path*) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(int num, u64 dir, int index,
		       struct fs_path *name,
		       void *ctx_)
{
	struct find_ref_ctx *ctx = ctx_;
	u64 dir_gen;
	int ret;

	if (dir == ctx->dir && FUNC0(name) == FUNC0(ctx->name) &&
	    FUNC2(name->start, ctx->name->start, FUNC0(name)) == 0) {
		/*
		 * To avoid doing extra lookups we'll only do this if everything
		 * else matches.
		 */
		ret = FUNC1(ctx->root, dir, NULL, &dir_gen, NULL,
				     NULL, NULL, NULL);
		if (ret)
			return ret;
		if (dir_gen != ctx->dir_gen)
			return 0;
		ctx->found_idx = num;
		return 1;
	}
	return 0;
}