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
struct kiocb {int ki_pos; struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct file {int /*<<< orphan*/  private_data; } ;
typedef  int ssize_t ;
typedef  int loff_t ;
struct TYPE_2__ {scalar_t__ nrpages; } ;

/* Variables and functions */
 int PAGE_SHIFT ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct kiocb*,struct iov_iter*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,unsigned long,unsigned long) ; 
 int FUNC5 (int /*<<< orphan*/ ,int,struct iov_iter*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*,int) ; 

__attribute__((used)) static ssize_t
FUNC7(struct kiocb *iocb, struct iov_iter *from)
{
	struct file *file = iocb->ki_filp;
	ssize_t retval;
	loff_t origin;
	int err = 0;

	retval = FUNC1(iocb, from);
	if (retval <= 0)
		return retval;

	origin = iocb->ki_pos;
	retval = FUNC5(file->private_data, iocb->ki_pos, from, &err);
	if (retval > 0) {
		struct inode *inode = FUNC0(file);
		loff_t i_size;
		unsigned long pg_start, pg_end;
		pg_start = origin >> PAGE_SHIFT;
		pg_end = (origin + retval - 1) >> PAGE_SHIFT;
		if (inode->i_mapping && inode->i_mapping->nrpages)
			FUNC4(inode->i_mapping,
						      pg_start, pg_end);
		iocb->ki_pos += retval;
		i_size = FUNC2(inode);
		if (iocb->ki_pos > i_size) {
			FUNC3(inode, iocb->ki_pos - i_size);
			/*
			 * Need to serialize against i_size_write() in
			 * v9fs_stat2inode()
			 */
			FUNC6(inode, iocb->ki_pos);
		}
		return retval;
	}
	return err;
}