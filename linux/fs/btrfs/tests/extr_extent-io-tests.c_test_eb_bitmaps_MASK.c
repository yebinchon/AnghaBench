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
typedef  int u32 ;
struct extent_buffer {int dummy; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int BTRFS_MAX_METADATA_BLOCKSIZE ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TEST_ALLOC_FS_INFO ; 
 int /*<<< orphan*/  TEST_ALLOC_ROOT ; 
 struct extent_buffer* FUNC0 (struct btrfs_fs_info*,int,unsigned long) ; 
 int FUNC1 (unsigned long*,struct extent_buffer*,unsigned long) ; 
 struct btrfs_fs_info* FUNC2 (unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long*) ; 
 unsigned long* FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(u32 sectorsize, u32 nodesize)
{
	struct btrfs_fs_info *fs_info;
	unsigned long len;
	unsigned long *bitmap = NULL;
	struct extent_buffer *eb = NULL;
	int ret;

	FUNC8("running extent buffer bitmap tests");

	/*
	 * In ppc64, sectorsize can be 64K, thus 4 * 64K will be larger than
	 * BTRFS_MAX_METADATA_BLOCKSIZE.
	 */
	len = (sectorsize < BTRFS_MAX_METADATA_BLOCKSIZE)
		? sectorsize * 4 : sectorsize;

	fs_info = FUNC2(len, len);
	if (!fs_info) {
		FUNC9(TEST_ALLOC_FS_INFO);
		return -ENOMEM;
	}

	bitmap = FUNC6(len, GFP_KERNEL);
	if (!bitmap) {
		FUNC7("couldn't allocate test bitmap");
		ret = -ENOMEM;
		goto out;
	}

	eb = FUNC0(fs_info, 0, len);
	if (!eb) {
		FUNC9(TEST_ALLOC_ROOT);
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC1(bitmap, eb, len);
	if (ret)
		goto out;

	/* Do it over again with an extent buffer which isn't page-aligned. */
	FUNC4(eb);
	eb = FUNC0(fs_info, nodesize / 2, len);
	if (!eb) {
		FUNC9(TEST_ALLOC_ROOT);
		ret = -ENOMEM;
		goto out;
	}

	ret = FUNC1(bitmap, eb, len);
out:
	FUNC4(eb);
	FUNC5(bitmap);
	FUNC3(fs_info);
	return ret;
}