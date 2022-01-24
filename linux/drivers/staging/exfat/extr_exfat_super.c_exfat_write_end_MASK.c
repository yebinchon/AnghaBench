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
struct page {int dummy; } ;
struct inode {int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct file_id_t {int attr; } ;
struct file {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {struct file_id_t fid; } ;

/* Variables and functions */
 int ATTR_ARCHIVE ; 
 TYPE_1__* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,scalar_t__) ; 
 int FUNC3 (struct file*,struct address_space*,scalar_t__,unsigned int,unsigned int,struct page*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 

__attribute__((used)) static int FUNC5(struct file *file, struct address_space *mapping,
			   loff_t pos, unsigned int len, unsigned int copied,
			   struct page *pagep, void *fsdata)
{
	struct inode *inode = mapping->host;
	struct file_id_t *fid = &(FUNC0(inode)->fid);
	int err;

	err = FUNC3(file, mapping, pos, len, copied, pagep, fsdata);

	if (err < len)
		FUNC2(mapping, pos + len);

	if (!(err < 0) && !(fid->attr & ATTR_ARCHIVE)) {
		inode->i_mtime = inode->i_ctime = FUNC1(inode);
		fid->attr |= ATTR_ARCHIVE;
		FUNC4(inode);
	}
	return err;
}