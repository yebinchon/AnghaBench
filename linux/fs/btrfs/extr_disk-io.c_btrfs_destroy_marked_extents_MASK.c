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
typedef  scalar_t__ u64 ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {int /*<<< orphan*/  bflags; } ;
struct btrfs_fs_info {scalar_t__ nodesize; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct extent_io_tree*,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC2 (struct btrfs_fs_info*,scalar_t__) ; 
 int FUNC3 (struct extent_io_tree*,scalar_t__,scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*) ; 

__attribute__((used)) static int FUNC7(struct btrfs_fs_info *fs_info,
					struct extent_io_tree *dirty_pages,
					int mark)
{
	int ret;
	struct extent_buffer *eb;
	u64 start = 0;
	u64 end;

	while (1) {
		ret = FUNC3(dirty_pages, start, &start, &end,
					    mark, NULL);
		if (ret)
			break;

		FUNC0(dirty_pages, start, end, mark);
		while (start <= end) {
			eb = FUNC2(fs_info, start);
			start += fs_info->nodesize;
			if (!eb)
				continue;
			FUNC6(eb);

			if (FUNC5(EXTENT_BUFFER_DIRTY,
					       &eb->bflags))
				FUNC1(eb);
			FUNC4(eb);
		}
	}

	return ret;
}