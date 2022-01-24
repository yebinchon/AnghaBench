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
struct inode {int /*<<< orphan*/  i_data; int /*<<< orphan*/ * i_mapping; int /*<<< orphan*/  i_sb; } ;
struct file {unsigned short f_flags; int /*<<< orphan*/ * private_data; TYPE_1__* f_cred; } ;
struct coda_inode_info {int /*<<< orphan*/  c_lock; scalar_t__ c_mapcount; } ;
struct coda_file_info {int /*<<< orphan*/  cfi_container; scalar_t__ cfi_mapcount; } ;
struct TYPE_2__ {int /*<<< orphan*/  fsuid; } ;

/* Variables and functions */
 struct coda_inode_info* FUNC0 (struct inode*) ; 
 unsigned short O_EXCL ; 
 unsigned short FUNC1 (unsigned short) ; 
 struct coda_file_info* FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 struct inode* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned short,int /*<<< orphan*/ ) ; 

int FUNC10(struct inode *coda_inode, struct file *coda_file)
{
	unsigned short flags = (coda_file->f_flags) & (~O_EXCL);
	unsigned short coda_flags = FUNC1(flags);
	struct coda_file_info *cfi;
	struct coda_inode_info *cii;
	struct inode *host_inode;
	int err;

	cfi = FUNC2(coda_file);

	err = FUNC9(coda_inode->i_sb, FUNC3(coda_inode),
			  coda_flags, coda_file->f_cred->fsuid);

	host_inode = FUNC4(cfi->cfi_container);
	cii = FUNC0(coda_inode);

	/* did we mmap this file? */
	FUNC7(&cii->c_lock);
	if (coda_inode->i_mapping == &host_inode->i_data) {
		cii->c_mapcount -= cfi->cfi_mapcount;
		if (!cii->c_mapcount)
			coda_inode->i_mapping = &coda_inode->i_data;
	}
	FUNC8(&cii->c_lock);

	FUNC5(cfi->cfi_container);
	FUNC6(coda_file->private_data);
	coda_file->private_data = NULL;

	/* VFS fput ignores the return value from file_operations->release, so
	 * there is no use returning an error here */
	return 0;
}