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
typedef  int /*<<< orphan*/  u64 ;
struct send_ctx {int dummy; } ;
struct list_head {int dummy; } ;
struct fs_path {int dummy; } ;
struct btrfs_root {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (struct list_head*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fs_path*) ; 
 int FUNC1 (struct fs_path*,struct fs_path*) ; 
 struct fs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fs_path*) ; 
 int FUNC4 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fs_path*) ; 
 int FUNC5 (struct btrfs_root*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct btrfs_root *root, u64 dir, struct fs_path *name,
		      void *ctx, struct list_head *refs)
{
	int ret = 0;
	struct send_ctx *sctx = ctx;
	struct fs_path *p;
	u64 gen;

	p = FUNC2();
	if (!p)
		return -ENOMEM;

	ret = FUNC5(root, dir, NULL, &gen, NULL, NULL,
			NULL, NULL);
	if (ret < 0)
		goto out;

	ret = FUNC4(sctx, dir, gen, p);
	if (ret < 0)
		goto out;
	ret = FUNC1(p, name);
	if (ret < 0)
		goto out;

	ret = FUNC0(refs, dir, gen, p);

out:
	if (ret)
		FUNC3(p);
	return ret;
}