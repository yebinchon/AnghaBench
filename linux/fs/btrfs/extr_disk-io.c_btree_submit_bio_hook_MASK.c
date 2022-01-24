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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  scalar_t__ blk_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_WQ_ENDIO_METADATA ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  btree_submit_bio_start ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*,struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct btrfs_fs_info*,struct bio*,int,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*,struct bio*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC9(struct inode *inode, struct bio *bio,
					  int mirror_num,
					  unsigned long bio_flags)
{
	struct btrfs_fs_info *fs_info = FUNC6(inode->i_sb);
	int async = FUNC8(fs_info, FUNC0(inode));
	blk_status_t ret;

	if (FUNC2(bio) != REQ_OP_WRITE) {
		/*
		 * called for a read, do the setup so that checksum validation
		 * can happen in the async kernel threads
		 */
		ret = FUNC4(fs_info, bio,
					  BTRFS_WQ_ENDIO_METADATA);
		if (ret)
			goto out_w_error;
		ret = FUNC5(fs_info, bio, mirror_num, 0);
	} else if (!async) {
		ret = FUNC3(bio);
		if (ret)
			goto out_w_error;
		ret = FUNC5(fs_info, bio, mirror_num, 0);
	} else {
		/*
		 * kthread helpers are used to submit writes so that
		 * checksumming can happen in parallel across all CPUs
		 */
		ret = FUNC7(fs_info, bio, mirror_num, 0,
					  0, inode, btree_submit_bio_start);
	}

	if (ret)
		goto out_w_error;
	return 0;

out_w_error:
	bio->bi_status = ret;
	FUNC1(bio);
	return ret;
}