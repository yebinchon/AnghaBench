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
struct extent_map_tree {int /*<<< orphan*/  lock; } ;
struct extent_map {scalar_t__ start; scalar_t__ block_start; scalar_t__ block_len; void* len; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 scalar_t__ EXTENT_MAP_INLINE ; 
 scalar_t__ SZ_1K ; 
 void* SZ_4K ; 
 int /*<<< orphan*/  TEST_ALLOC_EXTENT_MAP ; 
 int FUNC0 (struct extent_map_tree*,struct extent_map*,int /*<<< orphan*/ ) ; 
 struct extent_map* FUNC1 () ; 
 int FUNC2 (struct btrfs_fs_info*,struct extent_map_tree*,struct extent_map**,scalar_t__,void*) ; 
 scalar_t__ FUNC3 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_map_tree*) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct btrfs_fs_info *fs_info,
		struct extent_map_tree *em_tree)
{
	struct extent_map *em;
	int ret;

	em = FUNC1();
	if (!em) {
		FUNC7(TEST_ALLOC_EXTENT_MAP);
		return -ENOMEM;
	}

	/* Add [0, 1K) */
	em->start = 0;
	em->len = SZ_1K;
	em->block_start = EXTENT_MAP_INLINE;
	em->block_len = (u64)-1;
	FUNC8(&em_tree->lock);
	ret = FUNC0(em_tree, em, 0);
	FUNC9(&em_tree->lock);
	if (ret < 0) {
		FUNC6("cannot add extent range [0, 1K)");
		goto out;
	}
	FUNC4(em);

	/* Add [4K, 8K) following [0, 1K)  */
	em = FUNC1();
	if (!em) {
		FUNC7(TEST_ALLOC_EXTENT_MAP);
		ret = -ENOMEM;
		goto out;
	}

	em->start = SZ_4K;
	em->len = SZ_4K;
	em->block_start = SZ_4K;
	em->block_len = SZ_4K;
	FUNC8(&em_tree->lock);
	ret = FUNC0(em_tree, em, 0);
	FUNC9(&em_tree->lock);
	if (ret < 0) {
		FUNC6("cannot add extent range [4K, 8K)");
		goto out;
	}
	FUNC4(em);

	em = FUNC1();
	if (!em) {
		FUNC7(TEST_ALLOC_EXTENT_MAP);
		ret = -ENOMEM;
		goto out;
	}

	/* Add [0, 1K) */
	em->start = 0;
	em->len = SZ_1K;
	em->block_start = EXTENT_MAP_INLINE;
	em->block_len = (u64)-1;
	FUNC8(&em_tree->lock);
	ret = FUNC2(fs_info, em_tree, &em, em->start, em->len);
	FUNC9(&em_tree->lock);
	if (ret) {
		FUNC6("case2 [0 1K]: ret %d", ret);
		goto out;
	}
	if (em &&
	    (em->start != 0 || FUNC3(em) != SZ_1K ||
	     em->block_start != EXTENT_MAP_INLINE || em->block_len != (u64)-1)) {
		FUNC6(
"case2 [0 1K]: ret %d return a wrong em (start %llu len %llu block_start %llu block_len %llu",
			 ret, em->start, em->len, em->block_start,
			 em->block_len);
		ret = -EINVAL;
	}
	FUNC4(em);
out:
	FUNC5(em_tree);

	return ret;
}