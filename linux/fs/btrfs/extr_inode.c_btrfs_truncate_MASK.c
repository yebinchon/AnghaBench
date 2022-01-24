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
typedef  int u64 ;
struct inode {int i_size; int /*<<< orphan*/  i_sb; } ;
struct btrfs_trans_handle {struct btrfs_block_rsv* block_rsv; } ;
struct btrfs_root {int dummy; } ;
struct btrfs_block_rsv {int size; int failfast; } ;
struct btrfs_fs_info {int sectorsize; struct btrfs_block_rsv trans_block_rsv; } ;
struct TYPE_2__ {int /*<<< orphan*/  runtime_flags; struct btrfs_root* root; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_BLOCK_RSV_TEMP ; 
 int /*<<< orphan*/  BTRFS_EXTENT_DATA_KEY ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_NEEDS_FULL_SYNC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int EAGAIN ; 
 int ENOMEM ; 
 int ENOSPC ; 
 scalar_t__ FUNC2 (struct btrfs_trans_handle*) ; 
 int NEED_TRUNCATE_BLOCK ; 
 int FUNC3 (struct btrfs_trans_handle*) ; 
 struct btrfs_block_rsv* FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct btrfs_block_rsv*,struct btrfs_block_rsv*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct btrfs_fs_info*,struct btrfs_block_rsv*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct btrfs_fs_info*) ; 
 int FUNC8 (struct btrfs_fs_info*,int) ; 
 int FUNC9 (struct btrfs_trans_handle*) ; 
 int /*<<< orphan*/  FUNC10 (struct btrfs_fs_info*,struct btrfs_block_rsv*) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*,int,int /*<<< orphan*/ *) ; 
 struct btrfs_fs_info* FUNC12 (int /*<<< orphan*/ ) ; 
 struct btrfs_trans_handle* FUNC13 (struct btrfs_root*,int) ; 
 int FUNC14 (struct inode*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC15 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*,int,int /*<<< orphan*/ ) ; 
 int FUNC16 (struct btrfs_trans_handle*,struct btrfs_root*,struct inode*) ; 
 int FUNC17 (struct inode*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC19(struct inode *inode, bool skip_writeback)
{
	struct btrfs_fs_info *fs_info = FUNC12(inode->i_sb);
	struct btrfs_root *root = FUNC0(inode)->root;
	struct btrfs_block_rsv *rsv;
	int ret;
	struct btrfs_trans_handle *trans;
	u64 mask = fs_info->sectorsize - 1;
	u64 min_size = FUNC8(fs_info, 1);

	if (!skip_writeback) {
		ret = FUNC17(inode, inode->i_size & (~mask),
					       (u64)-1);
		if (ret)
			return ret;
	}

	/*
	 * Yes ladies and gentlemen, this is indeed ugly.  We have a couple of
	 * things going on here:
	 *
	 * 1) We need to reserve space to update our inode.
	 *
	 * 2) We need to have something to cache all the space that is going to
	 * be free'd up by the truncate operation, but also have some slack
	 * space reserved in case it uses space during the truncate (thank you
	 * very much snapshotting).
	 *
	 * And we need these to be separate.  The fact is we can use a lot of
	 * space doing the truncate, and we have no earthly idea how much space
	 * we will use, so we need the truncate reservation to be separate so it
	 * doesn't end up using space reserved for updating the inode.  We also
	 * need to be able to stop the transaction and start a new one, which
	 * means we need to be able to update the inode several times, and we
	 * have no idea of knowing how many times that will be, so we can't just
	 * reserve 1 item for the entirety of the operation, so that has to be
	 * done separately as well.
	 *
	 * So that leaves us with
	 *
	 * 1) rsv - for the truncate reservation, which we will steal from the
	 * transaction reservation.
	 * 2) fs_info->trans_block_rsv - this will have 1 items worth left for
	 * updating the inode.
	 */
	rsv = FUNC4(fs_info, BTRFS_BLOCK_RSV_TEMP);
	if (!rsv)
		return -ENOMEM;
	rsv->size = min_size;
	rsv->failfast = 1;

	/*
	 * 1 for the truncate slack space
	 * 1 for updating the inode.
	 */
	trans = FUNC13(root, 2);
	if (FUNC2(trans)) {
		ret = FUNC3(trans);
		goto out;
	}

	/* Migrate the slack space for the truncate to our reserve */
	ret = FUNC5(&fs_info->trans_block_rsv, rsv,
				      min_size, false);
	FUNC1(ret);

	/*
	 * So if we truncate and then write and fsync we normally would just
	 * write the extents that changed, which is a problem if we need to
	 * first truncate that entire inode.  So set this flag so we write out
	 * all of the extents in the inode to the sync log so we're completely
	 * safe.
	 */
	FUNC18(BTRFS_INODE_NEEDS_FULL_SYNC, &FUNC0(inode)->runtime_flags);
	trans->block_rsv = rsv;

	while (1) {
		ret = FUNC15(trans, root, inode,
						 inode->i_size,
						 BTRFS_EXTENT_DATA_KEY);
		trans->block_rsv = &fs_info->trans_block_rsv;
		if (ret != -ENOSPC && ret != -EAGAIN)
			break;

		ret = FUNC16(trans, root, inode);
		if (ret)
			break;

		FUNC9(trans);
		FUNC7(fs_info);

		trans = FUNC13(root, 2);
		if (FUNC2(trans)) {
			ret = FUNC3(trans);
			trans = NULL;
			break;
		}

		FUNC6(fs_info, rsv, -1);
		ret = FUNC5(&fs_info->trans_block_rsv,
					      rsv, min_size, false);
		FUNC1(ret);	/* shouldn't happen */
		trans->block_rsv = rsv;
	}

	/*
	 * We can't call btrfs_truncate_block inside a trans handle as we could
	 * deadlock with freeze, if we got NEED_TRUNCATE_BLOCK then we know
	 * we've truncated everything except the last little bit, and can do
	 * btrfs_truncate_block and then update the disk_i_size.
	 */
	if (ret == NEED_TRUNCATE_BLOCK) {
		FUNC9(trans);
		FUNC7(fs_info);

		ret = FUNC14(inode, inode->i_size, 0, 0);
		if (ret)
			goto out;
		trans = FUNC13(root, 1);
		if (FUNC2(trans)) {
			ret = FUNC3(trans);
			goto out;
		}
		FUNC11(inode, inode->i_size, NULL);
	}

	if (trans) {
		int ret2;

		trans->block_rsv = &fs_info->trans_block_rsv;
		ret2 = FUNC16(trans, root, inode);
		if (ret2 && !ret)
			ret = ret2;

		ret2 = FUNC9(trans);
		if (ret2 && !ret)
			ret = ret2;
		FUNC7(fs_info);
	}
out:
	FUNC10(fs_info, rsv);

	return ret;
}