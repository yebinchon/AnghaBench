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
typedef  int /*<<< orphan*/  u8 ;
struct extent_buffer {unsigned long len; struct btrfs_fs_info* fs_info; } ;
struct btrfs_fs_info {int /*<<< orphan*/  csum_shash; } ;
struct TYPE_6__ {int /*<<< orphan*/  tfm; } ;

/* Variables and functions */
 unsigned long BTRFS_CSUM_SIZE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,unsigned long) ; 
 int FUNC5 (struct extent_buffer*,unsigned long,int,char**,unsigned long*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 unsigned long FUNC7 (unsigned long,unsigned long) ; 
 TYPE_1__* shash ; 

__attribute__((used)) static int FUNC8(struct extent_buffer *buf, u8 *result)
{
	struct btrfs_fs_info *fs_info = buf->fs_info;
	FUNC0(shash, fs_info->csum_shash);
	unsigned long len;
	unsigned long cur_len;
	unsigned long offset = BTRFS_CSUM_SIZE;
	char *kaddr;
	unsigned long map_start;
	unsigned long map_len;
	int err;

	shash->tfm = fs_info->csum_shash;
	FUNC3(shash);

	len = buf->len - offset;

	while (len > 0) {
		/*
		 * Note: we don't need to check for the err == 1 case here, as
		 * with the given combination of 'start = BTRFS_CSUM_SIZE (32)'
		 * and 'min_len = 32' and the currently implemented mapping
		 * algorithm we cannot cross a page boundary.
		 */
		err = FUNC5(buf, offset, 32,
					&kaddr, &map_start, &map_len);
		if (FUNC1(err))
			return err;
		cur_len = FUNC7(len, map_len - (offset - map_start));
		FUNC4(shash, kaddr + offset - map_start, cur_len);
		len -= cur_len;
		offset += cur_len;
	}
	FUNC6(result, 0, BTRFS_CSUM_SIZE);

	FUNC2(shash, result);

	return 0;
}