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
struct buffer_head {scalar_t__ b_private; } ;
struct btrfs_device {int /*<<< orphan*/  name; int /*<<< orphan*/  fs_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  BTRFS_DEV_STAT_WRITE_ERRS ; 
 int /*<<< orphan*/  FUNC0 (struct btrfs_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC3 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer_head*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer_head*) ; 

__attribute__((used)) static void FUNC7(struct buffer_head *bh, int uptodate)
{
	if (uptodate) {
		FUNC5(bh);
	} else {
		struct btrfs_device *device = (struct btrfs_device *)
			bh->b_private;

		FUNC1(device->fs_info,
				"lost page write due to IO error on %s",
					  FUNC4(device->name));
		/* note, we don't set_buffer_write_io_error because we have
		 * our own ways of dealing with the IO errors
		 */
		FUNC2(bh);
		FUNC0(device, BTRFS_DEV_STAT_WRITE_ERRS);
	}
	FUNC6(bh);
	FUNC3(bh);
}