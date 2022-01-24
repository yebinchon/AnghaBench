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
struct extent_buffer {int /*<<< orphan*/ * pages; int /*<<< orphan*/  bflags; } ;
struct btrfs_fs_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTENT_BUFFER_UNMAPPED ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct extent_buffer* FUNC0 (struct btrfs_fs_info*,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct extent_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*) ; 

struct extent_buffer *FUNC8(struct btrfs_fs_info *fs_info,
						  u64 start, unsigned long len)
{
	struct extent_buffer *eb;
	int num_pages;
	int i;

	eb = FUNC0(fs_info, start, len);
	if (!eb)
		return NULL;

	num_pages = FUNC5(eb);
	for (i = 0; i < num_pages; i++) {
		eb->pages[i] = FUNC3(GFP_NOFS);
		if (!eb->pages[i])
			goto err;
	}
	FUNC7(eb);
	FUNC4(eb, 0);
	FUNC6(EXTENT_BUFFER_UNMAPPED, &eb->bflags);

	return eb;
err:
	for (; i > 0; i--)
		FUNC2(eb->pages[i - 1]);
	FUNC1(eb);
	return NULL;
}