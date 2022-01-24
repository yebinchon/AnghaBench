#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct inode {scalar_t__ i_blkbits; int /*<<< orphan*/  i_sb; } ;
struct extent_map {scalar_t__ block_start; scalar_t__ start; int /*<<< orphan*/  flags; int /*<<< orphan*/  bdev; scalar_t__ len; } ;
struct buffer_head {scalar_t__ b_size; int /*<<< orphan*/  b_bdev; scalar_t__ b_blocknr; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_dio_data {scalar_t__ reserve; scalar_t__ unsubmitted_oe_range_end; int /*<<< orphan*/  overwrite; } ;
struct TYPE_4__ {int flags; } ;
struct TYPE_3__ {struct btrfs_dio_data* journal_info; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATACOW ; 
 int BTRFS_ORDERED_NOCOW ; 
 int BTRFS_ORDERED_PREALLOC ; 
 int /*<<< orphan*/  EXTENT_FLAG_PREALLOC ; 
 scalar_t__ EXTENT_MAP_HOLE ; 
 scalar_t__ FUNC1 (struct extent_map*) ; 
 int FUNC2 (struct extent_map*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct extent_map* FUNC4 (struct inode*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*,scalar_t__) ; 
 struct extent_map* FUNC8 (struct inode*,scalar_t__,scalar_t__) ; 
 struct btrfs_fs_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (struct inode*,scalar_t__,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC11 (struct extent_map*) ; 
 scalar_t__ FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*,scalar_t__) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC16 (struct buffer_head*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct extent_map **map,
					 struct buffer_head *bh_result,
					 struct inode *inode,
					 struct btrfs_dio_data *dio_data,
					 u64 start, u64 len)
{
	struct btrfs_fs_info *fs_info = FUNC9(inode->i_sb);
	struct extent_map *em = *map;
	int ret = 0;

	/*
	 * We don't allocate a new extent in the following cases
	 *
	 * 1) The inode is marked as NODATACOW. In this case we'll just use the
	 * existing extent.
	 * 2) The extent is marked as PREALLOC. We're good to go here and can
	 * just use the extent.
	 *
	 */
	if (FUNC17(EXTENT_FLAG_PREALLOC, &em->flags) ||
	    ((FUNC0(inode)->flags & BTRFS_INODE_NODATACOW) &&
	     em->block_start != EXTENT_MAP_HOLE)) {
		int type;
		u64 block_start, orig_start, orig_block_len, ram_bytes;

		if (FUNC17(EXTENT_FLAG_PREALLOC, &em->flags))
			type = BTRFS_ORDERED_PREALLOC;
		else
			type = BTRFS_ORDERED_NOCOW;
		len = FUNC14(len, em->len - (start - em->start));
		block_start = em->block_start + (start - em->start);

		if (FUNC10(inode, start, &len, &orig_start,
				     &orig_block_len, &ram_bytes) == 1 &&
		    FUNC7(fs_info, block_start)) {
			struct extent_map *em2;

			em2 = FUNC4(inode, start, len,
						      orig_start, block_start,
						      len, orig_block_len,
						      ram_bytes, type);
			FUNC5(fs_info, block_start);
			if (type == BTRFS_ORDERED_PREALLOC) {
				FUNC11(em);
				*map = em = em2;
			}

			if (em2 && FUNC1(em2)) {
				ret = FUNC2(em2);
				goto out;
			}
			/*
			 * For inode marked NODATACOW or extent marked PREALLOC,
			 * use the existing or preallocated extent, so does not
			 * need to adjust btrfs_space_info's bytes_may_use.
			 */
			FUNC6(inode, start,
							       len);
			goto skip_cow;
		}
	}

	/* this will cow the extent */
	len = bh_result->b_size;
	FUNC11(em);
	*map = em = FUNC8(inode, start, len);
	if (FUNC1(em)) {
		ret = FUNC2(em);
		goto out;
	}

	len = FUNC14(len, em->len - (start - em->start));

skip_cow:
	bh_result->b_blocknr = (em->block_start + (start - em->start)) >>
		inode->i_blkbits;
	bh_result->b_size = len;
	bh_result->b_bdev = em->bdev;
	FUNC15(bh_result);

	if (!FUNC17(EXTENT_FLAG_PREALLOC, &em->flags))
		FUNC16(bh_result);

	/*
	 * Need to update the i_size under the extent lock so buffered
	 * readers will get the updated i_size when we unlock.
	 */
	if (!dio_data->overwrite && start + len > FUNC12(inode))
		FUNC13(inode, start + len);

	FUNC3(dio_data->reserve < len);
	dio_data->reserve -= len;
	dio_data->unsubmitted_oe_range_end = start + len;
	current->journal_info = dio_data;
out:
	return ret;
}