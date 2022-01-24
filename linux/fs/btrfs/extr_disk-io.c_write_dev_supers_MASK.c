#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct buffer_head {struct btrfs_device* b_private; int /*<<< orphan*/  b_end_io; int /*<<< orphan*/  b_data; } ;
struct btrfs_super_block {int /*<<< orphan*/  csum; } ;
struct btrfs_fs_info {int /*<<< orphan*/  csum_shash; } ;
struct btrfs_device {scalar_t__ commit_total_bytes; struct btrfs_fs_info* fs_info; int /*<<< orphan*/  bdev; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 int BTRFS_BDEV_BLOCKSIZE ; 
 int BTRFS_CSUM_SIZE ; 
 scalar_t__ BTRFS_SUPER_INFO_SIZE ; 
 int BTRFS_SUPER_MIRROR_MAX ; 
 int /*<<< orphan*/  NOBARRIER ; 
 int REQ_FUA ; 
 int REQ_META ; 
 int /*<<< orphan*/  REQ_OP_WRITE ; 
 int REQ_PRIO ; 
 int REQ_SYNC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 struct buffer_head* FUNC1 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  btrfs_end_buffer_write_sync ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_fs_info*,char*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct btrfs_super_block*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int,struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC11 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,struct btrfs_super_block*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct buffer_head*) ; 
 TYPE_1__* shash ; 

__attribute__((used)) static int FUNC14(struct btrfs_device *device,
			    struct btrfs_super_block *sb, int max_mirrors)
{
	struct btrfs_fs_info *fs_info = device->fs_info;
	FUNC0(shash, fs_info->csum_shash);
	struct buffer_head *bh;
	int i;
	int ret;
	int errors = 0;
	u64 bytenr;
	int op_flags;

	if (max_mirrors == 0)
		max_mirrors = BTRFS_SUPER_MIRROR_MAX;

	shash->tfm = fs_info->csum_shash;

	for (i = 0; i < max_mirrors; i++) {
		bytenr = FUNC3(i);
		if (bytenr + BTRFS_SUPER_INFO_SIZE >=
		    device->commit_total_bytes)
			break;

		FUNC4(sb, bytenr);

		FUNC8(shash);
		FUNC9(shash, (const char *)sb + BTRFS_CSUM_SIZE,
				    BTRFS_SUPER_INFO_SIZE - BTRFS_CSUM_SIZE);
		FUNC7(shash, sb->csum);

		/* One reference for us, and we leave it for the caller */
		bh = FUNC1(device->bdev, bytenr / BTRFS_BDEV_BLOCKSIZE,
			      BTRFS_SUPER_INFO_SIZE);
		if (!bh) {
			FUNC2(device->fs_info,
			    "couldn't get super buffer head for bytenr %llu",
			    bytenr);
			errors++;
			continue;
		}

		FUNC12(bh->b_data, sb, BTRFS_SUPER_INFO_SIZE);

		/* one reference for submit_bh */
		FUNC10(bh);

		FUNC13(bh);
		FUNC11(bh);
		bh->b_end_io = btrfs_end_buffer_write_sync;
		bh->b_private = device;

		/*
		 * we fua the first super.  The others we allow
		 * to go down lazy.
		 */
		op_flags = REQ_SYNC | REQ_META | REQ_PRIO;
		if (i == 0 && !FUNC5(device->fs_info, NOBARRIER))
			op_flags |= REQ_FUA;
		ret = FUNC6(REQ_OP_WRITE, op_flags, bh);
		if (ret)
			errors++;
	}
	return errors < i ? 0 : -1;
}