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
struct extent_buffer {int /*<<< orphan*/  len; int /*<<< orphan*/  bflags; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  dirty_metadata_batch; int /*<<< orphan*/  dirty_metadata_bytes; TYPE_1__* running_transaction; } ;
struct TYPE_2__ {scalar_t__ transid; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct extent_buffer*) ; 
 scalar_t__ FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(struct extent_buffer *buf)
{
	struct btrfs_fs_info *fs_info = buf->fs_info;
	if (FUNC1(buf) ==
	    fs_info->running_transaction->transid) {
		FUNC0(buf);

		if (FUNC5(EXTENT_BUFFER_DIRTY, &buf->bflags)) {
			FUNC4(&fs_info->dirty_metadata_bytes,
						 -buf->len,
						 fs_info->dirty_metadata_batch);
			/* ugh, clear_extent_buffer_dirty needs to lock the page */
			FUNC2(buf);
			FUNC3(buf);
		}
	}
}