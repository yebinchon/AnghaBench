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
struct TYPE_3__ {scalar_t__ mpage; } ;
struct z_erofs_decompress_frontend {int headoffset; TYPE_1__ map; int /*<<< orphan*/  clt; } ;
struct page {scalar_t__ index; TYPE_2__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
typedef  int erofs_off_t ;
struct TYPE_4__ {struct inode* host; } ;

/* Variables and functions */
 struct z_erofs_decompress_frontend FUNC0 (struct inode* const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int PAGE_SHIFT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  pagepool ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct page*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (struct z_erofs_decompress_frontend*,struct page*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC9(struct file *file,
					     struct page *page)
{
	struct inode *const inode = page->mapping->host;
	struct z_erofs_decompress_frontend f = FUNC0(inode);
	int err;
	FUNC1(pagepool);

	FUNC5(page, false);

	f.headoffset = (erofs_off_t)page->index << PAGE_SHIFT;

	err = FUNC7(&f, page, &pagepool);
	(void)FUNC6(&f.clt);

	/* if some compressed cluster ready, need submit them anyway */
	FUNC8(inode->i_sb, &f.clt, &pagepool, true);

	if (err)
		FUNC2(inode->i_sb, "failed to read, err [%d]", err);

	if (f.map.mpage)
		FUNC3(f.map.mpage);

	/* clean up the remaining free pages */
	FUNC4(&pagepool);
	return err;
}