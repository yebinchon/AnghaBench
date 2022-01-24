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
struct kiocb {TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_4__ {scalar_t__ mmu_private; } ;
struct TYPE_3__ {struct address_space* f_mapping; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (struct inode*) ; 
 int WRITE ; 
 scalar_t__ FUNC1 (struct kiocb*,struct inode*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exfat_get_block ; 
 int /*<<< orphan*/  FUNC2 (struct address_space*,scalar_t__) ; 
 scalar_t__ FUNC3 (struct iov_iter*) ; 
 int FUNC4 (struct iov_iter*) ; 

__attribute__((used)) static ssize_t FUNC5(struct kiocb *iocb, struct iov_iter *iter)
{
	struct inode *inode = iocb->ki_filp->f_mapping->host;
	struct address_space *mapping = iocb->ki_filp->f_mapping;
	ssize_t ret;
	int rw;

	rw = FUNC4(iter);

	if (rw == WRITE) {
		if (FUNC0(inode)->mmu_private < FUNC3(iter))
			return 0;
	}
	ret = FUNC1(iocb, inode, iter, exfat_get_block);

	if ((ret < 0) && (rw & WRITE))
		FUNC2(mapping, FUNC3(iter));
	return ret;
}