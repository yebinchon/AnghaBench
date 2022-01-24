#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {scalar_t__ private; TYPE_1__* mapping; } ;
struct extent_buffer {int read_mirror; scalar_t__ start; int /*<<< orphan*/  io_pages; int /*<<< orphan*/  bflags; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_io_bio {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* sb; int /*<<< orphan*/  super_copy; } ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_5__ {int /*<<< orphan*/  s_id; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 int BTRFS_CSUM_SIZE ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int BTRFS_MAX_LEVEL ; 
 int EIO ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  EXTENT_BUFFER_CORRUPT ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READAHEAD ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READ_ERR ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*,int) ; 
 scalar_t__ FUNC4 (struct extent_buffer*) ; 
 scalar_t__ FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*,char*,scalar_t__,...) ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int FUNC9 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC15 (struct extent_buffer*) ; 
 int FUNC16 (struct extent_buffer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct extent_buffer*) ; 
 scalar_t__ FUNC19 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (struct extent_buffer*) ; 
 scalar_t__ FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC26(struct btrfs_io_bio *io_bio,
				      u64 phy_offset, struct page *page,
				      u64 start, u64 end, int mirror)
{
	u64 found_start;
	int found_level;
	struct extent_buffer *eb;
	struct btrfs_root *root = FUNC0(page->mapping->host)->root;
	struct btrfs_fs_info *fs_info = root->fs_info;
	u16 csum_size = FUNC12(fs_info->super_copy);
	int ret = 0;
	u8 result[BTRFS_CSUM_SIZE];
	int reads_done;

	if (!page->private)
		goto out;

	eb = (struct extent_buffer *)page->private;

	/* the pending IO might have been the only thing that kept this buffer
	 * in memory.  Make sure we have a ref for all this other checks
	 */
	FUNC17(eb);

	reads_done = FUNC1(&eb->io_pages);
	if (!reads_done)
		goto err;

	eb->read_mirror = mirror;
	if (FUNC25(EXTENT_BUFFER_READ_ERR, &eb->bflags)) {
		ret = -EIO;
		goto err;
	}

	found_start = FUNC8(eb);
	if (found_start != eb->start) {
		FUNC7(fs_info, "bad tree block start, want %llu have %llu",
			     eb->start, found_start);
		ret = -EIO;
		goto err;
	}
	if (FUNC14(eb)) {
		FUNC7(fs_info, "bad fsid on block %llu",
			     eb->start);
		ret = -EIO;
		goto err;
	}
	found_level = FUNC9(eb);
	if (found_level >= BTRFS_MAX_LEVEL) {
		FUNC6(fs_info, "bad tree block level %d on %llu",
			  (int)FUNC9(eb), eb->start);
		ret = -EIO;
		goto err;
	}

	FUNC11(FUNC10(eb),
				       eb, found_level);

	ret = FUNC16(eb, result);
	if (ret)
		goto err;

	if (FUNC19(eb, result, 0, csum_size)) {
		u32 val;
		u32 found = 0;

		FUNC20(&found, result, csum_size);

		FUNC21(eb, &val, 0, csum_size);
		FUNC13(fs_info,
		"%s checksum verify failed on %llu wanted %x found %x level %d",
			      fs_info->sb->s_id, eb->start,
			      val, found, FUNC9(eb));
		ret = -EUCLEAN;
		goto err;
	}

	/*
	 * If this is a leaf block and it is corrupt, set the corrupt bit so
	 * that we don't try and read the other copies of this block, just
	 * return -EIO.
	 */
	if (found_level == 0 && FUNC4(eb)) {
		FUNC22(EXTENT_BUFFER_CORRUPT, &eb->bflags);
		ret = -EIO;
	}

	if (found_level > 0 && FUNC5(eb))
		ret = -EIO;

	if (!ret)
		FUNC23(eb);
	else
		FUNC6(fs_info,
			  "block=%llu read time tree block corruption detected",
			  eb->start);
err:
	if (reads_done &&
	    FUNC24(EXTENT_BUFFER_READAHEAD, &eb->bflags))
		FUNC3(eb, ret);

	if (ret) {
		/*
		 * our io error hook is going to dec the io pages
		 * again, we have to make sure it has something
		 * to decrement
		 */
		FUNC2(&eb->io_pages);
		FUNC15(eb);
	}
	FUNC18(eb);
out:
	return ret;
}