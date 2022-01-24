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
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mapping; int /*<<< orphan*/  i_mode; } ;
struct file {int dummy; } ;
struct coda_file_info {struct file* cfi_container; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct coda_file_info* FUNC3 (struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*) ; 
 struct inode* FUNC5 (struct file*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct file*,int) ; 

int FUNC11(struct file *coda_file, loff_t start, loff_t end, int datasync)
{
	struct file *host_file;
	struct inode *coda_inode = FUNC5(coda_file);
	struct coda_file_info *cfi;
	int err;

	if (!(FUNC2(coda_inode->i_mode) || FUNC0(coda_inode->i_mode) ||
	      FUNC1(coda_inode->i_mode)))
		return -EINVAL;

	err = FUNC6(coda_inode->i_mapping, start, end);
	if (err)
		return err;
	FUNC7(coda_inode);

	cfi = FUNC3(coda_file);
	host_file = cfi->cfi_container;

	err = FUNC10(host_file, datasync);
	if (!err && !datasync)
		err = FUNC9(coda_inode->i_sb, FUNC4(coda_inode));
	FUNC8(coda_inode);

	return err;
}