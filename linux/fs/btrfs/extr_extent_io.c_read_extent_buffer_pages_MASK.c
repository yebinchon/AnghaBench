#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct page {int dummy; } ;
struct extent_io_tree {int dummy; } ;
struct extent_buffer {struct page** pages; int /*<<< orphan*/  io_pages; scalar_t__ read_mirror; int /*<<< orphan*/  bflags; TYPE_1__* fs_info; } ;
struct bio {int dummy; } ;
struct TYPE_4__ {struct extent_io_tree io_tree; } ;
struct TYPE_3__ {int /*<<< orphan*/  btree_inode; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int EIO ; 
 int /*<<< orphan*/  EXTENT_BUFFER_READ_ERR ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UPTODATE ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  REQ_META ; 
 int WAIT_COMPLETE ; 
 int WAIT_NONE ; 
 int FUNC3 (struct extent_io_tree*,struct page*,int /*<<< orphan*/ ,struct bio**,int,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  btree_get_extent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct bio*,int,unsigned long) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (struct page*) ; 

int FUNC15(struct extent_buffer *eb, int wait, int mirror_num)
{
	int i;
	struct page *page;
	int err;
	int ret = 0;
	int locked_pages = 0;
	int all_uptodate = 1;
	int num_pages;
	unsigned long num_reads = 0;
	struct bio *bio = NULL;
	unsigned long bio_flags = 0;
	struct extent_io_tree *tree = &FUNC0(eb->fs_info->btree_inode)->io_tree;

	if (FUNC11(EXTENT_BUFFER_UPTODATE, &eb->bflags))
		return 0;

	num_pages = FUNC8(eb);
	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];
		if (wait == WAIT_NONE) {
			if (!FUNC12(page))
				goto unlock_exit;
		} else {
			FUNC7(page);
		}
		locked_pages++;
	}
	/*
	 * We need to firstly lock all pages to make sure that
	 * the uptodate bit of our pages won't be affected by
	 * clear_extent_buffer_uptodate().
	 */
	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];
		if (!FUNC2(page)) {
			num_reads++;
			all_uptodate = 0;
		}
	}

	if (all_uptodate) {
		FUNC9(EXTENT_BUFFER_UPTODATE, &eb->bflags);
		goto unlock_exit;
	}

	FUNC6(EXTENT_BUFFER_READ_ERR, &eb->bflags);
	eb->read_mirror = 0;
	FUNC5(&eb->io_pages, num_reads);
	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];

		if (!FUNC2(page)) {
			if (ret) {
				FUNC4(&eb->io_pages);
				FUNC13(page);
				continue;
			}

			FUNC1(page);
			err = FUNC3(tree, page,
						      btree_get_extent, &bio,
						      mirror_num, &bio_flags,
						      REQ_META);
			if (err) {
				ret = err;
				/*
				 * We use &bio in above __extent_read_full_page,
				 * so we ensure that if it returns error, the
				 * current page fails to add itself to bio and
				 * it's been unlocked.
				 *
				 * We must dec io_pages by ourselves.
				 */
				FUNC4(&eb->io_pages);
			}
		} else {
			FUNC13(page);
		}
	}

	if (bio) {
		err = FUNC10(bio, mirror_num, bio_flags);
		if (err)
			return err;
	}

	if (ret || wait != WAIT_COMPLETE)
		return ret;

	for (i = 0; i < num_pages; i++) {
		page = eb->pages[i];
		FUNC14(page);
		if (!FUNC2(page))
			ret = -EIO;
	}

	return ret;

unlock_exit:
	while (locked_pages > 0) {
		locked_pages--;
		page = eb->pages[locked_pages];
		FUNC13(page);
	}
	return ret;
}