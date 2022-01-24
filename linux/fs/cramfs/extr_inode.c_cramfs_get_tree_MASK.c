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
struct fs_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_CRAMFS_BLOCKDEV ; 
 int /*<<< orphan*/  CONFIG_CRAMFS_MTD ; 
 int ENOPROTOOPT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cramfs_blkdev_fill_super ; 
 int /*<<< orphan*/  cramfs_mtd_fill_super ; 
 int FUNC1 (struct fs_context*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct fs_context*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fs_context *fc)
{
	int ret = -ENOPROTOOPT;

	if (FUNC0(CONFIG_CRAMFS_MTD)) {
		ret = FUNC2(fc, cramfs_mtd_fill_super);
		if (ret < 0)
			return ret;
	}
	if (FUNC0(CONFIG_CRAMFS_BLOCKDEV))
		ret = FUNC1(fc, cramfs_blkdev_fill_super);
	return ret;
}