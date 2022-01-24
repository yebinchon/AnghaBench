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
struct send_ctx {struct btrfs_root* send_root; } ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ offset; int /*<<< orphan*/  type; int /*<<< orphan*/  objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_COMPARE_TREE_NEW ; 
 int /*<<< orphan*/  BTRFS_FIRST_FREE_OBJECTID ; 
 int /*<<< orphan*/  BTRFS_INODE_ITEM_KEY ; 
 int ENOMEM ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int FUNC3 (struct btrfs_root*,struct btrfs_path*) ; 
 int FUNC4 (struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_path*,int /*<<< orphan*/ *,struct btrfs_key*,int /*<<< orphan*/ ,struct send_ctx*) ; 
 int FUNC6 (struct send_ctx*,int) ; 

__attribute__((used)) static int FUNC7(struct send_ctx *sctx)
{
	int ret;
	struct btrfs_root *send_root = sctx->send_root;
	struct btrfs_key key;
	struct btrfs_path *path;
	struct extent_buffer *eb;
	int slot;

	path = FUNC0();
	if (!path)
		return -ENOMEM;

	key.objectid = BTRFS_FIRST_FREE_OBJECTID;
	key.type = BTRFS_INODE_ITEM_KEY;
	key.offset = 0;

	ret = FUNC4(send_root, &key, path, 1, 0);
	if (ret < 0)
		goto out;
	if (ret)
		goto out_finish;

	while (1) {
		eb = path->nodes[0];
		slot = path->slots[0];
		FUNC2(eb, &key, slot);

		ret = FUNC5(path, NULL, &key,
				 BTRFS_COMPARE_TREE_NEW, sctx);
		if (ret < 0)
			goto out;

		ret = FUNC3(send_root, path);
		if (ret < 0)
			goto out;
		if (ret) {
			ret  = 0;
			break;
		}
	}

out_finish:
	ret = FUNC6(sctx, 1);

out:
	FUNC1(path);
	return ret;
}