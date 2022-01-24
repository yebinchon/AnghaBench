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
struct waiting_dir_move {scalar_t__ orphanized; } ;
struct send_ctx {int /*<<< orphan*/  parent_root; } ;
struct fs_path {int reversed; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int ENOMEM ; 
 int FUNC0 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fs_path*) ; 
 int FUNC1 (struct fs_path*,struct fs_path*) ; 
 struct fs_path* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct fs_path*) ; 
 int /*<<< orphan*/  FUNC4 (struct fs_path*) ; 
 int /*<<< orphan*/  FUNC5 (struct fs_path*) ; 
 int FUNC6 (struct send_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct fs_path*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct fs_path*) ; 
 struct waiting_dir_move* FUNC8 (struct send_ctx*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct send_ctx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct send_ctx *sctx, u64 ino, u64 gen,
			struct fs_path *dest)
{
	int ret = 0;
	struct fs_path *name = NULL;
	u64 parent_inode = 0;
	u64 parent_gen = 0;
	int stop = 0;

	name = FUNC2();
	if (!name) {
		ret = -ENOMEM;
		goto out;
	}

	dest->reversed = 1;
	FUNC4(dest);

	while (!stop && ino != BTRFS_FIRST_FREE_OBJECTID) {
		struct waiting_dir_move *wdm;

		FUNC4(name);

		if (FUNC9(sctx, ino)) {
			ret = FUNC6(sctx, ino, gen, name);
			if (ret < 0)
				goto out;
			ret = FUNC1(dest, name);
			break;
		}

		wdm = FUNC8(sctx, ino);
		if (wdm && wdm->orphanized) {
			ret = FUNC6(sctx, ino, gen, name);
			stop = 1;
		} else if (wdm) {
			ret = FUNC7(sctx->parent_root, ino,
					    &parent_inode, &parent_gen, name);
		} else {
			ret = FUNC0(sctx, ino, gen,
							&parent_inode,
							&parent_gen, name);
			if (ret)
				stop = 1;
		}

		if (ret < 0)
			goto out;

		ret = FUNC1(dest, name);
		if (ret < 0)
			goto out;

		ino = parent_inode;
		gen = parent_gen;
	}

out:
	FUNC3(name);
	if (!ret)
		FUNC5(dest);
	return ret;
}