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
typedef  void* u64 ;
struct btrfs_trans_handle {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {int leave_spinning; } ;
struct btrfs_key {void* offset; int /*<<< orphan*/  type; void* objectid; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_EXTENT_ITEM_KEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 struct btrfs_path* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_trans_handle*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct btrfs_trans_handle*,struct btrfs_root*,struct btrfs_key*,struct btrfs_path*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct btrfs_root *root, u64 bytenr,
			      u64 num_bytes)
{
	struct btrfs_trans_handle trans;
	struct btrfs_key key;
	struct btrfs_path *path;
	int ret;

	FUNC3(&trans, NULL);

	key.objectid = bytenr;
	key.type = BTRFS_EXTENT_ITEM_KEY;
	key.offset = num_bytes;

	path = FUNC0();
	if (!path) {
		FUNC6(TEST_ALLOC_ROOT);
		return -ENOMEM;
	}
	path->leave_spinning = 1;

	ret = FUNC4(&trans, root, &key, path, -1, 1);
	if (ret) {
		FUNC5("didn't find our key %d", ret);
		FUNC2(path);
		return ret;
	}
	FUNC1(&trans, root, path);
	FUNC2(path);
	return 0;
}