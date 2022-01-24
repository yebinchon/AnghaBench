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
struct extent_buffer {int /*<<< orphan*/  bflags; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  EXTENT_BUFFER_CORRUPT ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READAHEAD ; 
 scalar_t__ FUNC0 (struct extent_buffer*) ; 
 int /*<<< orphan*/  WAIT_PAGE_LOCK ; 
 struct extent_buffer* FUNC1 (struct btrfs_fs_info*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC3 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*) ; 
 int FUNC5 (struct extent_buffer*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct btrfs_fs_info *fs_info, u64 bytenr,
				    int mirror_num, struct extent_buffer **eb)
{
	struct extent_buffer *buf = NULL;
	int ret;

	buf = FUNC1(fs_info, bytenr);
	if (FUNC0(buf))
		return 0;

	FUNC6(EXTENT_BUFFER_READAHEAD, &buf->bflags);

	ret = FUNC5(buf, WAIT_PAGE_LOCK, mirror_num);
	if (ret) {
		FUNC4(buf);
		return ret;
	}

	if (FUNC7(EXTENT_BUFFER_CORRUPT, &buf->bflags)) {
		FUNC4(buf);
		return -EIO;
	} else if (FUNC2(buf)) {
		*eb = buf;
	} else {
		FUNC3(buf);
	}
	return 0;
}