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
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {int dummy; } ;
struct coda_file_info {int /*<<< orphan*/  cfi_access_intent; int /*<<< orphan*/  cfi_container; } ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 int /*<<< orphan*/  CODA_ACCESS_TYPE_READ ; 
 int /*<<< orphan*/  CODA_ACCESS_TYPE_READ_FINISH ; 
 struct coda_file_info* FUNC0 (struct file*) ; 
 int /*<<< orphan*/  FUNC1 (struct inode*) ; 
 struct inode* FUNC2 (struct file*) ; 
 size_t FUNC3 (struct iov_iter*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC6(struct kiocb *iocb, struct iov_iter *to)
{
	struct file *coda_file = iocb->ki_filp;
	struct inode *coda_inode = FUNC2(coda_file);
	struct coda_file_info *cfi = FUNC0(coda_file);
	loff_t ki_pos = iocb->ki_pos;
	size_t count = FUNC3(to);
	ssize_t ret;

	ret = FUNC4(coda_inode->i_sb, FUNC1(coda_inode),
				  &cfi->cfi_access_intent,
				  count, ki_pos, CODA_ACCESS_TYPE_READ);
	if (ret)
		goto finish_read;

	ret = FUNC5(cfi->cfi_container, to, &iocb->ki_pos, 0);

finish_read:
	FUNC4(coda_inode->i_sb, FUNC1(coda_inode),
			    &cfi->cfi_access_intent,
			    count, ki_pos, CODA_ACCESS_TYPE_READ_FINISH);
	return ret;
}