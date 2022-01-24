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
typedef  scalar_t__ u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_path {scalar_t__* slots; struct extent_buffer** nodes; } ;
struct btrfs_key {scalar_t__ objectid; scalar_t__ type; int offset; } ;
struct btrfs_item {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ BTRFS_EXTENT_CSUM_KEY ; 
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (struct btrfs_root*) ; 
 int FUNC1 (struct btrfs_root*) ; 
 int /*<<< orphan*/  TEST_ALLOC_EXTENT_BUFFER ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_PATH ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 struct extent_buffer* FUNC2 (struct btrfs_fs_info*,scalar_t__) ; 
 struct btrfs_fs_info* FUNC3 (scalar_t__,scalar_t__) ; 
 struct btrfs_root* FUNC4 (struct btrfs_fs_info*) ; 
 struct btrfs_path* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_path*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*,struct btrfs_key*,int) ; 
 struct btrfs_item* FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC12 (struct extent_buffer*,struct btrfs_item*) ; 
 int FUNC13 (int /*<<< orphan*/ *,struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,int) ; 
 scalar_t__ FUNC14 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*,char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (struct btrfs_root*,struct btrfs_path*,struct btrfs_key*,scalar_t__*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_buffer*,char*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC22(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info;
	struct btrfs_path *path = NULL;
	struct btrfs_root *root = NULL;
	struct extent_buffer *eb;
	struct btrfs_item *item;
	char *value = "mary had a little lamb";
	char *split1 = "mary had a little";
	char *split2 = " lamb";
	char *split3 = "mary";
	char *split4 = " had a little";
	char buf[32];
	struct btrfs_key key;
	u32 value_len = FUNC17(value);
	int ret = 0;

	FUNC19("running btrfs_split_item tests");

	fs_info = FUNC3(nodesize, sectorsize);
	if (!fs_info) {
		FUNC20(TEST_ALLOC_FS_INFO);
		return -ENOMEM;
	}

	root = FUNC4(fs_info);
	if (FUNC0(root)) {
		FUNC20(TEST_ALLOC_ROOT);
		ret = FUNC1(root);
		goto out;
	}

	path = FUNC5();
	if (!path) {
		FUNC20(TEST_ALLOC_PATH);
		ret = -ENOMEM;
		goto out;
	}

	path->nodes[0] = eb = FUNC2(fs_info, nodesize);
	if (!eb) {
		FUNC20(TEST_ALLOC_EXTENT_BUFFER);
		ret = -ENOMEM;
		goto out;
	}
	path->slots[0] = 0;

	key.objectid = 0;
	key.type = BTRFS_EXTENT_CSUM_KEY;
	key.offset = 0;

	FUNC16(root, path, &key, &value_len, value_len,
			       value_len + sizeof(struct btrfs_item), 1);
	item = FUNC10(0);
	FUNC21(eb, value, FUNC11(eb, 0),
			    value_len);

	key.offset = 3;

	/*
	 * Passing NULL trans here should be safe because we have plenty of
	 * space in this leaf to split the item without having to split the
	 * leaf.
	 */
	ret = FUNC13(NULL, root, path, &key, 17);
	if (ret) {
		FUNC18("split item failed %d", ret);
		goto out;
	}

	/*
	 * Read the first slot, it should have the original key and contain only
	 * 'mary had a little'
	 */
	FUNC9(eb, &key, 0);
	if (key.objectid != 0 || key.type != BTRFS_EXTENT_CSUM_KEY ||
	    key.offset != 0) {
		FUNC18("invalid key at slot 0");
		ret = -EINVAL;
		goto out;
	}

	item = FUNC10(0);
	if (FUNC12(eb, item) != FUNC17(split1)) {
		FUNC18("invalid len in the first split");
		ret = -EINVAL;
		goto out;
	}

	FUNC15(eb, buf, FUNC11(eb, 0),
			   FUNC17(split1));
	if (FUNC14(buf, split1, FUNC17(split1))) {
		FUNC18(
"data in the buffer doesn't match what it should in the first split have='%.*s' want '%s'",
			 (int)FUNC17(split1), buf, split1);
		ret = -EINVAL;
		goto out;
	}

	FUNC9(eb, &key, 1);
	if (key.objectid != 0 || key.type != BTRFS_EXTENT_CSUM_KEY ||
	    key.offset != 3) {
		FUNC18("invalid key at slot 1");
		ret = -EINVAL;
		goto out;
	}

	item = FUNC10(1);
	if (FUNC12(eb, item) != FUNC17(split2)) {
		FUNC18("invalid len in the second split");
		ret = -EINVAL;
		goto out;
	}

	FUNC15(eb, buf, FUNC11(eb, 1),
			   FUNC17(split2));
	if (FUNC14(buf, split2, FUNC17(split2))) {
		FUNC18(
	"data in the buffer doesn't match what it should in the second split");
		ret = -EINVAL;
		goto out;
	}

	key.offset = 1;
	/* Do it again so we test memmoving the other items in the leaf */
	ret = FUNC13(NULL, root, path, &key, 4);
	if (ret) {
		FUNC18("second split item failed %d", ret);
		goto out;
	}

	FUNC9(eb, &key, 0);
	if (key.objectid != 0 || key.type != BTRFS_EXTENT_CSUM_KEY ||
	    key.offset != 0) {
		FUNC18("invalid key at slot 0");
		ret = -EINVAL;
		goto out;
	}

	item = FUNC10(0);
	if (FUNC12(eb, item) != FUNC17(split3)) {
		FUNC18("invalid len in the first split");
		ret = -EINVAL;
		goto out;
	}

	FUNC15(eb, buf, FUNC11(eb, 0),
			   FUNC17(split3));
	if (FUNC14(buf, split3, FUNC17(split3))) {
		FUNC18(
	"data in the buffer doesn't match what it should in the third split");
		ret = -EINVAL;
		goto out;
	}

	FUNC9(eb, &key, 1);
	if (key.objectid != 0 || key.type != BTRFS_EXTENT_CSUM_KEY ||
	    key.offset != 1) {
		FUNC18("invalid key at slot 1");
		ret = -EINVAL;
		goto out;
	}

	item = FUNC10(1);
	if (FUNC12(eb, item) != FUNC17(split4)) {
		FUNC18("invalid len in the second split");
		ret = -EINVAL;
		goto out;
	}

	FUNC15(eb, buf, FUNC11(eb, 1),
			   FUNC17(split4));
	if (FUNC14(buf, split4, FUNC17(split4))) {
		FUNC18(
	"data in the buffer doesn't match what it should in the fourth split");
		ret = -EINVAL;
		goto out;
	}

	FUNC9(eb, &key, 2);
	if (key.objectid != 0 || key.type != BTRFS_EXTENT_CSUM_KEY ||
	    key.offset != 3) {
		FUNC18("invalid key at slot 2");
		ret = -EINVAL;
		goto out;
	}

	item = FUNC10(2);
	if (FUNC12(eb, item) != FUNC17(split2)) {
		FUNC18("invalid len in the second split");
		ret = -EINVAL;
		goto out;
	}

	FUNC15(eb, buf, FUNC11(eb, 2),
			   FUNC17(split2));
	if (FUNC14(buf, split2, FUNC17(split2))) {
		FUNC18(
	"data in the buffer doesn't match what it should in the last chunk");
		ret = -EINVAL;
		goto out;
	}
out:
	FUNC8(path);
	FUNC7(root);
	FUNC6(fs_info);
	return ret;
}