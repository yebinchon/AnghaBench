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
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  int pgoff_t ;
typedef  int loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int ENOMEM ; 
 int PAGE_SHIFT ; 
 int FUNC0 (struct file*,int,unsigned int,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct file*,struct inode*,struct page*,int,int) ; 
 struct inode* FUNC2 (struct file*) ; 
 struct page* FUNC3 (struct address_space*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			    loff_t pos, unsigned len, unsigned flags,
			    struct page **pagep, void **fsdata)
{
	struct inode *inode = FUNC2(file);
	struct page *page;
	pgoff_t index = pos >> PAGE_SHIFT;
	int r;

	do {
		/* get a page */
		page = FUNC3(mapping, index, 0);
		if (!page)
			return -ENOMEM;

		FUNC1("write_begin file %p inode %p page %p %d~%d\n", file,
		     inode, page, (int)pos, (int)len);

		r = FUNC0(file, pos, len, page);
		if (r < 0)
			FUNC4(page);
		else
			*pagep = page;
	} while (r == -EAGAIN);

	return r;
}