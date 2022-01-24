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
struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_2__ {int f_flags; } ;

/* Variables and functions */
 int O_DIRECT ; 
 scalar_t__ FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (struct kiocb*,struct iov_iter*) ; 
 struct inode* FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (struct kiocb*,struct iov_iter*) ; 

__attribute__((used)) static ssize_t
FUNC4(struct kiocb *iocb, struct iov_iter *iter)
{
	ssize_t rc;
	struct inode *inode = FUNC2(iocb->ki_filp);

	if (iocb->ki_filp->f_flags & O_DIRECT)
		return FUNC1(iocb, iter);

	rc = FUNC0(inode);
	if (rc)
		return rc;

	return FUNC3(iocb, iter);
}