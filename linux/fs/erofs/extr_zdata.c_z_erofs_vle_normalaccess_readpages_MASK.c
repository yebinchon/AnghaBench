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
struct TYPE_3__ {struct page* mpage; } ;
struct z_erofs_decompress_frontend {int headoffset; TYPE_1__ map; int /*<<< orphan*/  clt; } ;
struct page {scalar_t__ index; int /*<<< orphan*/  lru; int /*<<< orphan*/  flags; } ;
struct list_head {int dummy; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct erofs_sb_info {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int erofs_off_t ;
struct TYPE_4__ {int /*<<< orphan*/  nid; } ;

/* Variables and functions */
 struct z_erofs_decompress_frontend FUNC0 (struct inode* const) ; 
 TYPE_2__* FUNC1 (struct inode* const) ; 
 struct erofs_sb_info* FUNC2 (struct inode* const) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 scalar_t__ FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*,struct address_space*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct page* FUNC9 (struct list_head*) ; 
 int /*<<< orphan*/  FUNC10 (struct address_space*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (struct page*) ; 
 int /*<<< orphan*/  pagepool ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct page*,unsigned long) ; 
 int FUNC16 (struct erofs_sb_info* const,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (struct inode*,struct page*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int FUNC19 (struct z_erofs_decompress_frontend*,struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC21(struct file *filp,
					      struct address_space *mapping,
					      struct list_head *pages,
					      unsigned int nr_pages)
{
	struct inode *const inode = mapping->host;
	struct erofs_sb_info *const sbi = FUNC2(inode);

	bool sync = FUNC16(sbi, nr_pages);
	struct z_erofs_decompress_frontend f = FUNC0(inode);
	gfp_t gfp = FUNC10(mapping, GFP_KERNEL);
	struct page *head = NULL;
	FUNC3(pagepool);

	FUNC17(mapping->host, FUNC9(pages),
			      nr_pages, false);

	f.headoffset = (erofs_off_t)FUNC9(pages)->index << PAGE_SHIFT;

	for (; nr_pages; --nr_pages) {
		struct page *page = FUNC9(pages);

		FUNC12(&page->flags);
		FUNC8(&page->lru);

		/*
		 * A pure asynchronous readahead is indicated if
		 * a PG_readahead marked page is hitted at first.
		 * Let's also do asynchronous decompression for this case.
		 */
		sync &= !(FUNC4(page) && !head);

		if (FUNC5(page, mapping, page->index, gfp)) {
			FUNC7(&page->lru, &pagepool);
			continue;
		}

		FUNC15(page, (unsigned long)head);
		head = page;
	}

	while (head) {
		struct page *page = head;
		int err;

		/* traversal in reverse order */
		head = (void *)FUNC11(page);

		err = FUNC19(&f, page, &pagepool);
		if (err)
			FUNC6(inode->i_sb,
				  "readahead error at page %lu @ nid %llu",
				  page->index, FUNC1(inode)->nid);
		FUNC13(page);
	}

	(void)FUNC18(&f.clt);

	FUNC20(inode->i_sb, &f.clt, &pagepool, sync);

	if (f.map.mpage)
		FUNC13(f.map.mpage);

	/* clean up the remaining free pages */
	FUNC14(&pagepool);
	return 0;
}