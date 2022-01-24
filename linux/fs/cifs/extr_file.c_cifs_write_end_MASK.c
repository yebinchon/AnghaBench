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
struct inode {unsigned int i_size; int /*<<< orphan*/  i_lock; } ;
struct file {struct cifsFileInfo* private_data; } ;
struct cifs_sb_info {int mnt_cifs_flags; } ;
struct cifsFileInfo {int /*<<< orphan*/  pid; TYPE_1__* dentry; } ;
struct address_space {struct inode* host; } ;
typedef  unsigned int loff_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int /*<<< orphan*/  tgid; } ;
struct TYPE_3__ {int /*<<< orphan*/  d_sb; } ;

/* Variables and functions */
 int CIFS_MOUNT_RWPIDFORWARD ; 
 struct cifs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FYI ; 
 unsigned int PAGE_SIZE ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,struct page*,unsigned int,unsigned int) ; 
 int FUNC6 (struct cifsFileInfo*,int /*<<< orphan*/ ,char*,unsigned int,unsigned int*) ; 
 TYPE_2__* current ; 
 int /*<<< orphan*/  FUNC7 (unsigned int) ; 
 unsigned int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (struct inode*,unsigned int) ; 
 char* FUNC10 (struct page*) ; 
 int /*<<< orphan*/  FUNC11 (struct page*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int /*<<< orphan*/  FUNC13 (struct page*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (struct page*) ; 

__attribute__((used)) static int FUNC17(struct file *file, struct address_space *mapping,
			loff_t pos, unsigned len, unsigned copied,
			struct page *page, void *fsdata)
{
	int rc;
	struct inode *inode = mapping->host;
	struct cifsFileInfo *cfile = file->private_data;
	struct cifs_sb_info *cifs_sb = FUNC0(cfile->dentry->d_sb);
	__u32 pid;

	if (cifs_sb->mnt_cifs_flags & CIFS_MOUNT_RWPIDFORWARD)
		pid = cfile->pid;
	else
		pid = current->tgid;

	FUNC5(FYI, "write_end for page %p from pos %lld with %d bytes\n",
		 page, pos, copied);

	if (FUNC2(page)) {
		if (copied == len)
			FUNC4(page);
		FUNC1(page);
	} else if (!FUNC3(page) && copied == PAGE_SIZE)
		FUNC4(page);

	if (!FUNC3(page)) {
		char *page_data;
		unsigned offset = pos & (PAGE_SIZE - 1);
		unsigned int xid;

		xid = FUNC8();
		/* this is probably better than directly calling
		   partialpage_write since in this function the file handle is
		   known which we might as well	leverage */
		/* BB check if anything else missing out of ppw
		   such as updating last write time */
		page_data = FUNC10(page);
		rc = FUNC6(cfile, pid, page_data + offset, copied, &pos);
		/* if (rc < 0) should we set writebehind rc? */
		FUNC11(page);

		FUNC7(xid);
	} else {
		rc = copied;
		pos += copied;
		FUNC13(page);
	}

	if (rc > 0) {
		FUNC14(&inode->i_lock);
		if (pos > inode->i_size)
			FUNC9(inode, pos);
		FUNC15(&inode->i_lock);
	}

	FUNC16(page);
	FUNC12(page);

	return rc;
}