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
typedef  int /*<<< orphan*/  tmp ;
struct send_ctx {int /*<<< orphan*/  parent_root; int /*<<< orphan*/  send_root; } ;
struct fs_path {int dummy; } ;
struct btrfs_path {int dummy; } ;
struct btrfs_dir_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int ENOMEM ; 
 scalar_t__ FUNC1 (struct btrfs_dir_item*) ; 
 int FUNC2 (struct btrfs_dir_item*) ; 
 struct btrfs_path* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_path*) ; 
 struct btrfs_dir_item* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct btrfs_path*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_path*) ; 
 int FUNC7 (struct fs_path*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,int,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static int FUNC10(struct send_ctx *sctx,
			   u64 ino, u64 gen,
			   struct fs_path *dest)
{
	int ret = 0;
	struct btrfs_path *path;
	struct btrfs_dir_item *di;
	char tmp[64];
	int len;
	u64 idx = 0;

	path = FUNC3();
	if (!path)
		return -ENOMEM;

	while (1) {
		len = FUNC8(tmp, sizeof(tmp), "o%llu-%llu-%llu",
				ino, gen, idx);
		FUNC0(len < sizeof(tmp));

		di = FUNC5(NULL, sctx->send_root,
				path, BTRFS_FIRST_FREE_OBJECTID,
				tmp, FUNC9(tmp), 0);
		FUNC6(path);
		if (FUNC1(di)) {
			ret = FUNC2(di);
			goto out;
		}
		if (di) {
			/* not unique, try again */
			idx++;
			continue;
		}

		if (!sctx->parent_root) {
			/* unique */
			ret = 0;
			break;
		}

		di = FUNC5(NULL, sctx->parent_root,
				path, BTRFS_FIRST_FREE_OBJECTID,
				tmp, FUNC9(tmp), 0);
		FUNC6(path);
		if (FUNC1(di)) {
			ret = FUNC2(di);
			goto out;
		}
		if (di) {
			/* not unique, try again */
			idx++;
			continue;
		}
		/* unique */
		break;
	}

	ret = FUNC7(dest, tmp, FUNC9(tmp));

out:
	FUNC4(path);
	return ret;
}