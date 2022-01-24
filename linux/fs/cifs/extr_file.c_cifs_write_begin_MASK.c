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
struct page {int dummy; } ;
struct file {int f_flags; } ;
struct address_space {int /*<<< orphan*/  host; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FYI ; 
 int O_ACCMODE ; 
 int O_WRONLY ; 
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,long long,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct page*,int*) ; 
 struct page* FUNC6 (struct address_space*,int,unsigned int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*,int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC10(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned flags,
			struct page **pagep, void **fsdata)
{
	int oncethru = 0;
	pgoff_t index = pos >> PAGE_SHIFT;
	loff_t offset = pos & (PAGE_SIZE - 1);
	loff_t page_start = pos & PAGE_MASK;
	loff_t i_size;
	struct page *page;
	int rc = 0;

	FUNC4(FYI, "write_begin from %lld len %d\n", (long long)pos, len);

start:
	page = FUNC6(mapping, index, flags);
	if (!page) {
		rc = -ENOMEM;
		goto out;
	}

	if (FUNC2(page))
		goto out;

	/*
	 * If we write a full page it will be up to date, no need to read from
	 * the server. If the write is short, we'll end up doing a sync write
	 * instead.
	 */
	if (len == PAGE_SIZE)
		goto out;

	/*
	 * optimize away the read when we have an oplock, and we're not
	 * expecting to use any of the data we'd be reading in. That
	 * is, when the page lies beyond the EOF, or straddles the EOF
	 * and the write will cover all of the existing data.
	 */
	if (FUNC0(FUNC1(mapping->host))) {
		i_size = FUNC7(mapping->host);
		if (page_start >= i_size ||
		    (offset == 0 && (pos + len) >= i_size)) {
			FUNC9(page, 0, offset,
					   offset + len,
					   PAGE_SIZE);
			/*
			 * PageChecked means that the parts of the page
			 * to which we're not writing are considered up
			 * to date. Once the data is copied to the
			 * page, it can be set uptodate.
			 */
			FUNC3(page);
			goto out;
		}
	}

	if ((file->f_flags & O_ACCMODE) != O_WRONLY && !oncethru) {
		/*
		 * might as well read a page, it is fast enough. If we get
		 * an error, we don't need to return it. cifs_write_end will
		 * do a sync write instead since PG_uptodate isn't set.
		 */
		FUNC5(file, page, &page_start);
		FUNC8(page);
		oncethru = 1;
		goto start;
	} else {
		/* we could try using another file handle if there is one -
		   but how would we lock it to prevent close of that handle
		   racing with this read? In any case
		   this will be written out by write_end so is fine */
	}
out:
	*pagep = page;
	return rc;
}