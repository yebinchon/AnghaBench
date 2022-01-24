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
typedef  unsigned long u64 ;
struct page {scalar_t__ private; } ;
struct extent_buffer {struct page** pages; int /*<<< orphan*/  refs; int /*<<< orphan*/  bflags; } ;
struct btrfs_fs_info {unsigned long nodesize; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/  buffer_radix; int /*<<< orphan*/  sectorsize; TYPE_1__* btree_inode; } ;
struct address_space {int /*<<< orphan*/  private_lock; } ;
struct TYPE_2__ {struct address_space* i_mapping; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int EEXIST ; 
 int EINVAL ; 
 int ENOMEM ; 
 struct extent_buffer* FUNC1 (int) ; 
 int /*<<< orphan*/  EXTENT_BUFFER_IN_TREE ; 
 int /*<<< orphan*/  EXTENT_BUFFER_UPTODATE ; 
 int GFP_NOFS ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long PAGE_SHIFT ; 
 int FUNC3 (struct page*) ; 
 scalar_t__ FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int __GFP_NOFAIL ; 
 struct extent_buffer* FUNC7 (struct btrfs_fs_info*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct extent_buffer*,struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct btrfs_fs_info*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC13 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC14 (struct btrfs_fs_info*,unsigned long) ; 
 struct page* FUNC15 (struct address_space*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC16 (struct extent_buffer*,struct page*) ; 
 int FUNC17 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC18 (struct page*) ; 
 int FUNC19 (int /*<<< orphan*/ *,unsigned long,struct extent_buffer*) ; 
 int FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (struct page*) ; 

struct extent_buffer *FUNC26(struct btrfs_fs_info *fs_info,
					  u64 start)
{
	unsigned long len = fs_info->nodesize;
	int num_pages;
	int i;
	unsigned long index = start >> PAGE_SHIFT;
	struct extent_buffer *eb;
	struct extent_buffer *exists = NULL;
	struct page *p;
	struct address_space *mapping = fs_info->btree_inode->i_mapping;
	int uptodate = 1;
	int ret;

	if (!FUNC2(start, fs_info->sectorsize)) {
		FUNC11(fs_info, "bad tree block start %llu", start);
		return FUNC1(-EINVAL);
	}

	eb = FUNC14(fs_info, start);
	if (eb)
		return eb;

	eb = FUNC7(fs_info, start, len);
	if (!eb)
		return FUNC1(-ENOMEM);

	num_pages = FUNC17(eb);
	for (i = 0; i < num_pages; i++, index++) {
		p = FUNC15(mapping, index, GFP_NOFS|__GFP_NOFAIL);
		if (!p) {
			exists = FUNC1(-ENOMEM);
			goto free_eb;
		}

		FUNC23(&mapping->private_lock);
		if (FUNC4(p)) {
			/*
			 * We could have already allocated an eb for this page
			 * and attached one so lets see if we can get a ref on
			 * the existing eb, and if we can we know it's good and
			 * we can just return that one, else we know we can just
			 * overwrite page->private.
			 */
			exists = (struct extent_buffer *)p->private;
			if (FUNC9(&exists->refs)) {
				FUNC24(&mapping->private_lock);
				FUNC25(p);
				FUNC18(p);
				FUNC16(exists, p);
				goto free_eb;
			}
			exists = NULL;

			/*
			 * Do this so attach doesn't complain and we need to
			 * drop the ref the old guy had.
			 */
			FUNC0(p);
			FUNC6(FUNC3(p));
			FUNC18(p);
		}
		FUNC10(eb, p);
		FUNC24(&mapping->private_lock);
		FUNC6(FUNC3(p));
		eb->pages[i] = p;
		if (!FUNC5(p))
			uptodate = 0;

		/*
		 * We can't unlock the pages just yet since the extent buffer
		 * hasn't been properly inserted in the radix tree, this
		 * opens a race with btree_releasepage which can free a page
		 * while we are still filling in all pages for the buffer and
		 * we could crash.
		 */
	}
	if (uptodate)
		FUNC22(EXTENT_BUFFER_UPTODATE, &eb->bflags);
again:
	ret = FUNC20(GFP_NOFS);
	if (ret) {
		exists = FUNC1(ret);
		goto free_eb;
	}

	FUNC23(&fs_info->buffer_lock);
	ret = FUNC19(&fs_info->buffer_radix,
				start >> PAGE_SHIFT, eb);
	FUNC24(&fs_info->buffer_lock);
	FUNC21();
	if (ret == -EEXIST) {
		exists = FUNC14(fs_info, start);
		if (exists)
			goto free_eb;
		else
			goto again;
	}
	/* add one reference for the tree */
	FUNC13(eb);
	FUNC22(EXTENT_BUFFER_IN_TREE, &eb->bflags);

	/*
	 * Now it's safe to unlock the pages because any calls to
	 * btree_releasepage will correctly detect that a page belongs to a
	 * live buffer and won't free them prematurely.
	 */
	for (i = 0; i < num_pages; i++)
		FUNC25(eb->pages[i]);
	return eb;

free_eb:
	FUNC6(!FUNC8(&eb->refs));
	for (i = 0; i < num_pages; i++) {
		if (eb->pages[i])
			FUNC25(eb->pages[i]);
	}

	FUNC12(eb);
	return exists;
}