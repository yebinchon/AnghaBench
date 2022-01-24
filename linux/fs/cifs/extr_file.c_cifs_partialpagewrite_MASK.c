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
struct page {struct address_space* mapping; scalar_t__ index; } ;
struct inode {scalar_t__ i_size; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; } ;
struct cifsFileInfo {int /*<<< orphan*/  pid; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 int EFAULT ; 
 int EIO ; 
 int /*<<< orphan*/  FYI ; 
 scalar_t__ PAGE_SHIFT ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,struct cifsFileInfo**) ; 
 int FUNC4 (struct cifsFileInfo*,int /*<<< orphan*/ ,char*,unsigned int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 char* FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

__attribute__((used)) static int FUNC9(struct page *page, unsigned from, unsigned to)
{
	struct address_space *mapping = page->mapping;
	loff_t offset = (loff_t)page->index << PAGE_SHIFT;
	char *write_data;
	int rc = -EFAULT;
	int bytes_written = 0;
	struct inode *inode;
	struct cifsFileInfo *open_file;

	if (!mapping || !mapping->host)
		return -EFAULT;

	inode = page->mapping->host;

	offset += (loff_t)from;
	write_data = FUNC7(page);
	write_data += from;

	if ((to > PAGE_SIZE) || (from > to)) {
		FUNC8(page);
		return -EIO;
	}

	/* racing with truncate? */
	if (offset > mapping->host->i_size) {
		FUNC8(page);
		return 0; /* don't care */
	}

	/* check to make sure that we are not extending the file */
	if (mapping->host->i_size - offset < (loff_t)to)
		to = (unsigned)(mapping->host->i_size - offset);

	rc = FUNC3(FUNC0(mapping->host), false, &open_file);
	if (!rc) {
		bytes_written = FUNC4(open_file, open_file->pid,
					   write_data, to - from, &offset);
		FUNC1(open_file);
		/* Does mm or vfs already set times? */
		inode->i_atime = inode->i_mtime = FUNC5(inode);
		if ((bytes_written > 0) && (offset))
			rc = 0;
		else if (bytes_written < 0)
			rc = bytes_written;
		else
			rc = -EFAULT;
	} else {
		FUNC2(FYI, "No writable handle for write page rc=%d\n", rc);
		if (!FUNC6(rc))
			rc = -EIO;
	}

	FUNC8(page);
	return rc;
}