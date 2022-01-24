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
typedef  int /*<<< orphan*/  u64 ;
struct walk_control {scalar_t__ wait; scalar_t__ write; scalar_t__ pin; } ;
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  start; } ;
struct btrfs_root {struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MIXED_GROUPS ; 
 scalar_t__ FUNC0 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct extent_buffer*) ; 
 scalar_t__ FUNC2 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct btrfs_fs_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct extent_buffer*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 

__attribute__((used)) static int FUNC8(struct btrfs_root *log,
			      struct extent_buffer *eb,
			      struct walk_control *wc, u64 gen, int level)
{
	struct btrfs_fs_info *fs_info = log->fs_info;
	int ret = 0;

	/*
	 * If this fs is mixed then we need to be able to process the leaves to
	 * pin down any logged extents, so we have to read the block.
	 */
	if (FUNC2(fs_info, MIXED_GROUPS)) {
		ret = FUNC5(eb, gen, level, NULL);
		if (ret)
			return ret;
	}

	if (wc->pin)
		ret = FUNC4(fs_info, eb->start,
						      eb->len);

	if (!ret && FUNC0(eb, gen, 0)) {
		if (wc->pin && FUNC3(eb) == 0)
			ret = FUNC1(eb);
		if (wc->write)
			FUNC7(eb);
		if (wc->wait)
			FUNC6(eb);
	}
	return ret;
}