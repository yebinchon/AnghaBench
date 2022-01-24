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
struct page {TYPE_1__* mapping; } ;
struct inode {unsigned int i_size; } ;
struct file {int dummy; } ;
struct address_space {int dummy; } ;
typedef  unsigned int loff_t ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct file*,struct address_space*) ; 
 int /*<<< orphan*/  FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct file *filp, struct address_space *mapping,
			  loff_t pos, unsigned len, unsigned copied,
			  struct page *page, void *fsdata)
{
	loff_t last_pos = pos + copied;
	struct inode *inode = page->mapping->host;

	FUNC4(P9_DEBUG_VFS, "filp %p, mapping %p\n", filp, mapping);

	if (!FUNC0(page)) {
		if (FUNC7(copied < len)) {
			copied = 0;
			goto out;
		} else if (len == PAGE_SIZE) {
			FUNC1(page);
		}
	}
	/*
	 * No need to use i_size_read() here, the i_size
	 * cannot change under us because we hold the i_mutex.
	 */
	if (last_pos > inode->i_size) {
		FUNC3(inode, last_pos - inode->i_size);
		FUNC2(inode, last_pos);
	}
	FUNC6(page);
out:
	FUNC8(page);
	FUNC5(page);

	return copied;
}