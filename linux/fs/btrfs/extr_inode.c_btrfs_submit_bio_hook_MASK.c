#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_4__ {scalar_t__ objectid; } ;
struct btrfs_root {TYPE_1__ root_key; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {scalar_t__ bi_status; } ;
typedef  enum btrfs_wq_endio_type { ____Placeholder_btrfs_wq_endio_type } btrfs_wq_endio_type ;
typedef  scalar_t__ blk_status_t ;
struct TYPE_5__ {int flags; int /*<<< orphan*/  sync_writers; struct btrfs_root* root; } ;

/* Variables and functions */
 scalar_t__ BTRFS_DATA_RELOC_TREE_OBJECTID ; 
 TYPE_2__* FUNC0 (struct inode*) ; 
 int BTRFS_INODE_NODATASUM ; 
 int BTRFS_WQ_ENDIO_DATA ; 
 int BTRFS_WQ_ENDIO_FREE_SPACE ; 
 unsigned long EXTENT_BIO_COMPRESSED ; 
 scalar_t__ REQ_OP_WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 scalar_t__ FUNC4 (struct btrfs_fs_info*,struct bio*,int) ; 
 scalar_t__ FUNC5 (struct inode*,struct bio*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 scalar_t__ FUNC7 (struct inode*,struct bio*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct btrfs_fs_info*,struct bio*,int,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_submit_bio_start ; 
 scalar_t__ FUNC10 (struct inode*,struct bio*,int,unsigned long) ; 
 scalar_t__ FUNC11 (struct btrfs_fs_info*,struct bio*,int,unsigned long,int /*<<< orphan*/ ,struct inode*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static blk_status_t FUNC12(struct inode *inode, struct bio *bio,
					  int mirror_num,
					  unsigned long bio_flags)

{
	struct btrfs_fs_info *fs_info = FUNC9(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	enum btrfs_wq_endio_type metadata = BTRFS_WQ_ENDIO_DATA;
	blk_status_t ret = 0;
	int skip_sum;
	int async = !FUNC1(&FUNC0(inode)->sync_writers);

	skip_sum = FUNC0(inode)->flags & BTRFS_INODE_NODATASUM;

	if (FUNC6(FUNC0(inode)))
		metadata = BTRFS_WQ_ENDIO_FREE_SPACE;

	if (FUNC3(bio) != REQ_OP_WRITE) {
		ret = FUNC4(fs_info, bio, metadata);
		if (ret)
			goto out;

		if (bio_flags & EXTENT_BIO_COMPRESSED) {
			ret = FUNC10(inode, bio,
							   mirror_num,
							   bio_flags);
			goto out;
		} else if (!skip_sum) {
			ret = FUNC7(inode, bio, NULL);
			if (ret)
				goto out;
		}
		goto mapit;
	} else if (async && !skip_sum) {
		/* csum items have already been cloned */
		if (root->root_key.objectid == BTRFS_DATA_RELOC_TREE_OBJECTID)
			goto mapit;
		/* we're doing a write, do the async checksumming */
		ret = FUNC11(fs_info, bio, mirror_num, bio_flags,
					  0, inode, btrfs_submit_bio_start);
		goto out;
	} else if (!skip_sum) {
		ret = FUNC5(inode, bio, 0, 0);
		if (ret)
			goto out;
	}

mapit:
	ret = FUNC8(fs_info, bio, mirror_num, 0);

out:
	if (ret) {
		bio->bi_status = ret;
		FUNC2(bio);
	}
	return ret;
}