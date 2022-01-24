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
struct kiocb {int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int i_size; int i_blocks; int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; } ;
struct file {int dummy; } ;
struct coda_file_info {int /*<<< orphan*/  cfi_access_intent; struct file* cfi_container; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_ACCESS_TYPE_WRITE ; 
 int /*<<< orphan*/  CODA_ACCESS_TYPE_WRITE_FINISH ; 
 struct coda_file_info* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 
 struct inode* FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (struct file*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 size_t FUNC8 (struct iov_iter*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct file*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC11(struct kiocb *iocb, struct iov_iter *to)
{
	struct file *coda_file = iocb->ki_filp;
	struct inode *coda_inode = FUNC4(coda_file);
	struct coda_file_info *cfi = FUNC0(coda_file);
	struct file *host_file = cfi->cfi_container;
	loff_t ki_pos = iocb->ki_pos;
	size_t count = FUNC8(to);
	ssize_t ret;

	ret = FUNC9(coda_inode->i_sb, FUNC1(coda_inode),
				  &cfi->cfi_access_intent,
				  count, ki_pos, CODA_ACCESS_TYPE_WRITE);
	if (ret)
		goto finish_write;

	FUNC5(host_file);
	FUNC6(coda_inode);
	ret = FUNC10(cfi->cfi_container, to, &iocb->ki_pos, 0);
	coda_inode->i_size = FUNC4(host_file)->i_size;
	coda_inode->i_blocks = (coda_inode->i_size + 511) >> 9;
	coda_inode->i_mtime = coda_inode->i_ctime = FUNC2(coda_inode);
	FUNC7(coda_inode);
	FUNC3(host_file);

finish_write:
	FUNC9(coda_inode->i_sb, FUNC1(coda_inode),
			    &cfi->cfi_access_intent,
			    count, ki_pos, CODA_ACCESS_TYPE_WRITE_FINISH);
	return ret;
}