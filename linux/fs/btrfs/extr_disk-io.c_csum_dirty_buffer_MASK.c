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
typedef  int /*<<< orphan*/  u8 ;
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct page {scalar_t__ private; } ;
struct extent_buffer {int /*<<< orphan*/  start; struct page** pages; } ;
struct btrfs_fs_info {TYPE_1__* fs_devices; int /*<<< orphan*/  super_copy; } ;
struct TYPE_2__ {int /*<<< orphan*/  metadata_uuid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int BTRFS_CSUM_SIZE ; 
 int /*<<< orphan*/  BTRFS_FSID_SIZE ; 
 int EINVAL ; 
 int EUCLEAN ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct btrfs_fs_info*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct extent_buffer*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct extent_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct btrfs_fs_info *fs_info, struct page *page)
{
	u64 start = FUNC12(page);
	u64 found_start;
	u8 result[BTRFS_CSUM_SIZE];
	u16 csum_size = FUNC9(fs_info->super_copy);
	struct extent_buffer *eb;
	int ret;

	eb = (struct extent_buffer *)page->private;
	if (page != eb->pages[0])
		return 0;

	found_start = FUNC6(eb);
	/*
	 * Please do not consolidate these warnings into a single if.
	 * It is useful to know what went wrong.
	 */
	if (FUNC2(found_start != start))
		return -EUCLEAN;
	if (FUNC2(!FUNC1(page)))
		return -EUCLEAN;

	FUNC0(FUNC11(eb, fs_info->fs_devices->metadata_uuid,
			FUNC7(), BTRFS_FSID_SIZE) == 0);

	if (FUNC10(eb, result))
		return -EINVAL;

	if (FUNC8(eb))
		ret = FUNC4(eb);
	else
		ret = FUNC3(eb);

	if (ret < 0) {
		FUNC5(fs_info,
		"block=%llu write time tree block corruption detected",
			  eb->start);
		return ret;
	}
	FUNC13(eb, result, 0, csum_size);

	return 0;
}