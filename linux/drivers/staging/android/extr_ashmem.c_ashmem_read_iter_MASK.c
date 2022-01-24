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
struct kiocb {int /*<<< orphan*/  ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct ashmem_area {scalar_t__ size; TYPE_2__* file; } ;
typedef  int ssize_t ;
struct TYPE_4__ {int /*<<< orphan*/  f_pos; } ;
struct TYPE_3__ {struct ashmem_area* private_data; } ;

/* Variables and functions */
 int EBADF ; 
 int /*<<< orphan*/  ashmem_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_2__*,struct iov_iter*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC3(struct kiocb *iocb, struct iov_iter *iter)
{
	struct ashmem_area *asma = iocb->ki_filp->private_data;
	int ret = 0;

	FUNC0(&ashmem_mutex);

	/* If size is not set, or set to 0, always return EOF. */
	if (asma->size == 0)
		goto out_unlock;

	if (!asma->file) {
		ret = -EBADF;
		goto out_unlock;
	}

	/*
	 * asma and asma->file are used outside the lock here.  We assume
	 * once asma->file is set it will never be changed, and will not
	 * be destroyed until all references to the file are dropped and
	 * ashmem_release is called.
	 */
	FUNC1(&ashmem_mutex);
	ret = FUNC2(asma->file, iter, &iocb->ki_pos, 0);
	FUNC0(&ashmem_mutex);
	if (ret > 0)
		asma->file->f_pos = iocb->ki_pos;
out_unlock:
	FUNC1(&ashmem_mutex);
	return ret;
}