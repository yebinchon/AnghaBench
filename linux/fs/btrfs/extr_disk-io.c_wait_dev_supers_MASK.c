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
typedef  int u64 ;
struct buffer_head {int dummy; } ;
struct btrfs_device {scalar_t__ commit_total_bytes; int /*<<< orphan*/  devid; int /*<<< orphan*/  fs_info; int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int BTRFS_BDEV_BLOCKSIZE ; 
 scalar_t__ BTRFS_SUPER_INFO_SIZE ; 
 int BTRFS_SUPER_MIRROR_MAX ; 
 struct buffer_head* FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 

__attribute__((used)) static int FUNC6(struct btrfs_device *device, int max_mirrors)
{
	struct buffer_head *bh;
	int i;
	int errors = 0;
	bool primary_failed = false;
	u64 bytenr;

	if (max_mirrors == 0)
		max_mirrors = BTRFS_SUPER_MIRROR_MAX;

	for (i = 0; i < max_mirrors; i++) {
		bytenr = FUNC3(i);
		if (bytenr + BTRFS_SUPER_INFO_SIZE >=
		    device->commit_total_bytes)
			break;

		bh = FUNC0(device->bdev,
				      bytenr / BTRFS_BDEV_BLOCKSIZE,
				      BTRFS_SUPER_INFO_SIZE);
		if (!bh) {
			errors++;
			if (i == 0)
				primary_failed = true;
			continue;
		}
		FUNC5(bh);
		if (!FUNC4(bh)) {
			errors++;
			if (i == 0)
				primary_failed = true;
		}

		/* drop our reference */
		FUNC1(bh);

		/* drop the reference from the writing run */
		FUNC1(bh);
	}

	/* log error, force error return */
	if (primary_failed) {
		FUNC2(device->fs_info, "error writing primary super block to device %llu",
			  device->devid);
		return -1;
	}

	return errors < i ? 0 : -1;
}