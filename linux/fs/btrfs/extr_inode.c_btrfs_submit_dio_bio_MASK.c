#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u64 ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct btrfs_dio_private {int dummy; } ;
struct bio {struct btrfs_dio_private* bi_private; } ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_2__ {int flags; int /*<<< orphan*/  sync_writers; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATASUM ; 
 int /*<<< orphan*/  BTRFS_WQ_ENDIO_DATA ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct btrfs_fs_info*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct inode*,struct bio*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (struct inode*,struct btrfs_dio_private*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct btrfs_fs_info*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_submit_bio_start_direct_io ; 
 scalar_t__ FUNC8 (struct btrfs_fs_info*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline blk_status_t FUNC9(struct bio *bio,
		struct inode *inode, u64 file_offset, int async_submit)
{
	struct btrfs_fs_info *fs_info = FUNC7(inode->i_sb);
	struct btrfs_dio_private *dip = bio->bi_private;
	bool write = FUNC2(bio) == REQ_OP_WRITE;
	blk_status_t ret;

	/* Check btrfs_submit_bio_hook() for rules about async submit. */
	if (async_submit)
		async_submit = !FUNC1(&FUNC0(inode)->sync_writers);

	if (!write) {
		ret = FUNC3(fs_info, bio, BTRFS_WQ_ENDIO_DATA);
		if (ret)
			goto err;
	}

	if (FUNC0(inode)->flags & BTRFS_INODE_NODATASUM)
		goto map;

	if (write && async_submit) {
		ret = FUNC8(fs_info, bio, 0, 0,
					  file_offset, inode,
					  btrfs_submit_bio_start_direct_io);
		goto err;
	} else if (write) {
		/*
		 * If we aren't doing async submit, calculate the csum of the
		 * bio now.
		 */
		ret = FUNC4(inode, bio, file_offset, 1);
		if (ret)
			goto err;
	} else {
		ret = FUNC5(inode, dip, bio,
						     file_offset);
		if (ret)
			goto err;
	}
map:
	ret = FUNC6(fs_info, bio, 0, 0);
err:
	return ret;
}