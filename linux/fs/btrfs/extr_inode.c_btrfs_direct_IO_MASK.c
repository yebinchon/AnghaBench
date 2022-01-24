#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  void* u64 ;
struct kiocb {scalar_t__ ki_pos; int ki_flags; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_sb; } ;
struct file {TYPE_1__* f_mapping; } ;
struct extent_changeset {int dummy; } ;
struct btrfs_fs_info {TYPE_2__* fs_devices; int /*<<< orphan*/  sectorsize; } ;
struct btrfs_dio_data {int overwrite; size_t reserve; scalar_t__ unsubmitted_oe_range_start; scalar_t__ unsubmitted_oe_range_end; int /*<<< orphan*/  member_0; } ;
typedef  int ssize_t ;
typedef  scalar_t__ loff_t ;
struct TYPE_9__ {int /*<<< orphan*/  dio_sem; int /*<<< orphan*/  runtime_flags; } ;
struct TYPE_8__ {struct btrfs_dio_data* journal_info; } ;
struct TYPE_7__ {int /*<<< orphan*/  latest_bdev; } ;
struct TYPE_6__ {struct inode* host; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  BTRFS_INODE_HAS_ASYNC_EXTENT ; 
 int /*<<< orphan*/  BTRFS_INODE_READDIO_NEED_LOCK ; 
 int DIO_LOCKING ; 
 int DIO_SKIP_HOLES ; 
 int EAGAIN ; 
 int EIOCBQUEUED ; 
 int IOCB_NOWAIT ; 
 scalar_t__ WRITE ; 
 int FUNC1 (struct kiocb*,struct inode*,int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct extent_changeset*,scalar_t__,size_t,int) ; 
 int FUNC5 (struct inode*,struct extent_changeset**,scalar_t__,size_t) ; 
 int /*<<< orphan*/  btrfs_get_blocks_direct ; 
 struct btrfs_fs_info* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  btrfs_submit_direct ; 
 scalar_t__ FUNC7 (struct btrfs_fs_info*,struct iov_iter*,scalar_t__) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_changeset*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct inode*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 
 int /*<<< orphan*/  FUNC13 (struct inode*) ; 
 int /*<<< orphan*/  FUNC14 (struct inode*) ; 
 size_t FUNC15 (struct iov_iter*) ; 
 scalar_t__ FUNC16 (struct iov_iter*) ; 
 size_t FUNC17 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC20(struct kiocb *iocb, struct iov_iter *iter)
{
	struct file *file = iocb->ki_filp;
	struct inode *inode = file->f_mapping->host;
	struct btrfs_fs_info *fs_info = FUNC6(inode->i_sb);
	struct btrfs_dio_data dio_data = { 0 };
	struct extent_changeset *data_reserved = NULL;
	loff_t offset = iocb->ki_pos;
	size_t count = 0;
	int flags = 0;
	bool wakeup = true;
	bool relock = false;
	ssize_t ret;

	if (FUNC7(fs_info, iter, offset))
		return 0;

	FUNC11(inode);

	/*
	 * The generic stuff only does filemap_write_and_wait_range, which
	 * isn't enough if we've written compressed pages to this area, so
	 * we need to flush the dirty pages again to make absolutely sure
	 * that any outstanding dirty pages are on disk.
	 */
	count = FUNC15(iter);
	if (FUNC18(BTRFS_INODE_HAS_ASYNC_EXTENT,
		     &FUNC0(inode)->runtime_flags))
		FUNC10(inode->i_mapping, offset,
					 offset + count - 1);

	if (FUNC16(iter) == WRITE) {
		/*
		 * If the write DIO is beyond the EOF, we need update
		 * the isize, but it is protected by i_mutex. So we can
		 * not unlock the i_mutex at this case.
		 */
		if (offset + count <= inode->i_size) {
			dio_data.overwrite = 1;
			FUNC14(inode);
			relock = true;
		} else if (iocb->ki_flags & IOCB_NOWAIT) {
			ret = -EAGAIN;
			goto out;
		}
		ret = FUNC5(inode, &data_reserved,
						   offset, count);
		if (ret)
			goto out;

		/*
		 * We need to know how many extents we reserved so that we can
		 * do the accounting properly if we go over the number we
		 * originally calculated.  Abuse current->journal_info for this.
		 */
		dio_data.reserve = FUNC17(count,
					    fs_info->sectorsize);
		dio_data.unsubmitted_oe_range_start = (u64)offset;
		dio_data.unsubmitted_oe_range_end = (u64)offset;
		current->journal_info = &dio_data;
		FUNC8(&FUNC0(inode)->dio_sem);
	} else if (FUNC18(BTRFS_INODE_READDIO_NEED_LOCK,
				     &FUNC0(inode)->runtime_flags)) {
		FUNC12(inode);
		flags = DIO_LOCKING | DIO_SKIP_HOLES;
		wakeup = false;
	}

	ret = FUNC1(iocb, inode,
				   fs_info->fs_devices->latest_bdev,
				   iter, btrfs_get_blocks_direct, NULL,
				   btrfs_submit_direct, flags);
	if (FUNC16(iter) == WRITE) {
		FUNC19(&FUNC0(inode)->dio_sem);
		current->journal_info = NULL;
		if (ret < 0 && ret != -EIOCBQUEUED) {
			if (dio_data.reserve)
				FUNC4(inode, data_reserved,
					offset, dio_data.reserve, true);
			/*
			 * On error we might have left some ordered extents
			 * without submitting corresponding bios for them, so
			 * cleanup them up to avoid other tasks getting them
			 * and waiting for them to complete forever.
			 */
			if (dio_data.unsubmitted_oe_range_start <
			    dio_data.unsubmitted_oe_range_end)
				FUNC2(inode,
					dio_data.unsubmitted_oe_range_start,
					dio_data.unsubmitted_oe_range_end -
					dio_data.unsubmitted_oe_range_start,
					false);
		} else if (ret >= 0 && (size_t)ret < count)
			FUNC4(inode, data_reserved,
					offset, count - (size_t)ret, true);
		FUNC3(FUNC0(inode), count);
	}
out:
	if (wakeup)
		FUNC12(inode);
	if (relock)
		FUNC13(inode);

	FUNC9(data_reserved);
	return ret;
}