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
struct io_failure_record {int this_mirror; int failed_mirror; int /*<<< orphan*/  len; int /*<<< orphan*/  logical; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct btrfs_fs_info {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_fs_info*,char*,int,int,int) ; 
 int FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct btrfs_fs_info* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct inode *inode,
				      struct bio *failed_bio,
				      struct io_failure_record *failrec,
				      int failed_mirror)
{
	struct btrfs_fs_info *fs_info = FUNC2(inode->i_sb);
	int num_copies;

	num_copies = FUNC1(fs_info, failrec->logical, failrec->len);
	if (num_copies == 1) {
		/*
		 * we only have a single copy of the data, so don't bother with
		 * all the retry and error correction code that follows. no
		 * matter what the error is, it is very likely to persist.
		 */
		FUNC0(fs_info,
			"Check DIO Repairable: cannot repair, num_copies=%d, next_mirror %d, failed_mirror %d",
			num_copies, failrec->this_mirror, failed_mirror);
		return 0;
	}

	failrec->failed_mirror = failed_mirror;
	failrec->this_mirror++;
	if (failrec->this_mirror == failed_mirror)
		failrec->this_mirror++;

	if (failrec->this_mirror > num_copies) {
		FUNC0(fs_info,
			"Check DIO Repairable: (fail) num_copies=%d, next_mirror %d, failed_mirror %d",
			num_copies, failrec->this_mirror, failed_mirror);
		return 0;
	}

	return 1;
}