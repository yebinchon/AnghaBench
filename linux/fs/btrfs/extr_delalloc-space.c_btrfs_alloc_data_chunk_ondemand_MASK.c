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
struct btrfs_trans_handle {TYPE_1__* transaction; } ;
struct btrfs_space_info {scalar_t__ total_bytes; int /*<<< orphan*/  lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  total_bytes_pinned; int /*<<< orphan*/  force_alloc; int /*<<< orphan*/  full; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_inode {struct btrfs_root* root; } ;
struct btrfs_fs_info {int /*<<< orphan*/  sectorsize; struct btrfs_space_info* data_sinfo; } ;
struct TYPE_4__ {int /*<<< orphan*/  journal_info; } ;
struct TYPE_3__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BTRFS_TOTAL_BYTES_PINNED_BATCH ; 
 int /*<<< orphan*/  BTRFS_TRANS_HAVE_FREE_BGS ; 
 int /*<<< orphan*/  CHUNK_ALLOC_FORCE ; 
 int /*<<< orphan*/  CHUNK_ALLOC_NO_FORCE ; 
 int ENOSPC ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  U64_MAX ; 
 int FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_trans_handle*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct btrfs_trans_handle*) ; 
 scalar_t__ FUNC9 (struct btrfs_inode*) ; 
 struct btrfs_trans_handle* FUNC10 (struct btrfs_root*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,struct btrfs_space_info*,scalar_t__) ; 
 scalar_t__ FUNC12 (struct btrfs_space_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct btrfs_fs_info*,int) ; 
 int FUNC14 (struct btrfs_fs_info*) ; 
 int /*<<< orphan*/  FUNC15 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ,scalar_t__,int) ; 

int FUNC20(struct btrfs_inode *inode, u64 bytes)
{
	struct btrfs_root *root = inode->root;
	struct btrfs_fs_info *fs_info = root->fs_info;
	struct btrfs_space_info *data_sinfo = fs_info->data_sinfo;
	u64 used;
	int ret = 0;
	int need_commit = 2;
	int have_pinned_space;

	/* Make sure bytes are sectorsize aligned */
	bytes = FUNC0(bytes, fs_info->sectorsize);

	if (FUNC9(inode)) {
		need_commit = 0;
		FUNC1(current->journal_info);
	}

again:
	/* Make sure we have enough space to handle the data first */
	FUNC16(&data_sinfo->lock);
	used = FUNC12(data_sinfo, true);

	if (used + bytes > data_sinfo->total_bytes) {
		struct btrfs_trans_handle *trans;

		/*
		 * If we don't have enough free bytes in this space then we need
		 * to alloc a new chunk.
		 */
		if (!data_sinfo->full) {
			u64 alloc_target;

			data_sinfo->force_alloc = CHUNK_ALLOC_FORCE;
			FUNC17(&data_sinfo->lock);

			alloc_target = FUNC7(fs_info);
			/*
			 * It is ugly that we don't call nolock join
			 * transaction for the free space inode case here.
			 * But it is safe because we only do the data space
			 * reservation for the free space cache in the
			 * transaction context, the common join transaction
			 * just increase the counter of the current transaction
			 * handler, doesn't try to acquire the trans_lock of
			 * the fs.
			 */
			trans = FUNC10(root);
			if (FUNC2(trans))
				return FUNC3(trans);

			ret = FUNC5(trans, alloc_target,
						CHUNK_ALLOC_NO_FORCE);
			FUNC8(trans);
			if (ret < 0) {
				if (ret != -ENOSPC)
					return ret;
				else {
					have_pinned_space = 1;
					goto commit_trans;
				}
			}

			goto again;
		}

		/*
		 * If we don't have enough pinned space to deal with this
		 * allocation, and no removed chunk in current transaction,
		 * don't bother committing the transaction.
		 */
		have_pinned_space = FUNC4(
			&data_sinfo->total_bytes_pinned,
			used + bytes - data_sinfo->total_bytes,
			BTRFS_TOTAL_BYTES_PINNED_BATCH);
		FUNC17(&data_sinfo->lock);

		/* Commit the current transaction and try again */
commit_trans:
		if (need_commit) {
			need_commit--;

			if (need_commit > 0) {
				FUNC13(fs_info, -1);
				FUNC15(fs_info, U64_MAX, 0,
							 (u64)-1);
			}

			trans = FUNC10(root);
			if (FUNC2(trans))
				return FUNC3(trans);
			if (have_pinned_space >= 0 ||
			    FUNC18(BTRFS_TRANS_HAVE_FREE_BGS,
				     &trans->transaction->flags) ||
			    need_commit > 0) {
				ret = FUNC6(trans);
				if (ret)
					return ret;
				/*
				 * The cleaner kthread might still be doing iput
				 * operations. Wait for it to finish so that
				 * more space is released.  We don't need to
				 * explicitly run the delayed iputs here because
				 * the commit_transaction would have woken up
				 * the cleaner.
				 */
				ret = FUNC14(fs_info);
				if (ret)
					return ret;
				goto again;
			} else {
				FUNC8(trans);
			}
		}

		FUNC19(fs_info,
					      "space_info:enospc",
					      data_sinfo->flags, bytes, 1);
		return -ENOSPC;
	}
	FUNC11(fs_info, data_sinfo, bytes);
	FUNC17(&data_sinfo->lock);

	return 0;
}