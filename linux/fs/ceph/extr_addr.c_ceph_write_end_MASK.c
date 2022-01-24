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
typedef  unsigned int loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CHECK_CAPS_AUTHONLY ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct file*,struct inode*,struct page*,int,int,int) ; 
 struct inode* FUNC6 (struct file*) ; 
 unsigned int FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct page*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct address_space *mapping,
			  loff_t pos, unsigned len, unsigned copied,
			  struct page *page, void *fsdata)
{
	struct inode *inode = FUNC6(file);
	bool check_cap = false;

	FUNC5("write_end file %p inode %p page %p %d~%d (%d)\n", file,
	     inode, page, (int)pos, (int)copied, (int)len);

	/* zero the stale part of the page if we did a short copy */
	if (!FUNC0(page)) {
		if (copied < len) {
			copied = 0;
			goto out;
		}
		FUNC1(page);
	}

	/* did file size increase? */
	if (pos+copied > FUNC7(inode))
		check_cap = FUNC4(inode, pos+copied);

	FUNC9(page);

out:
	FUNC10(page);
	FUNC8(page);

	if (check_cap)
		FUNC2(FUNC3(inode), CHECK_CAPS_AUTHONLY, NULL);

	return copied;
}