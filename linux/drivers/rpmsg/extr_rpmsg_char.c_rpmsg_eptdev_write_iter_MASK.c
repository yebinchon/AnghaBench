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
struct rpmsg_eptdev {int /*<<< orphan*/  ept_lock; int /*<<< orphan*/  ept; } ;
struct kiocb {struct file* ki_filp; } ;
struct iov_iter {int dummy; } ;
struct file {int f_flags; struct rpmsg_eptdev* private_data; } ;
typedef  int ssize_t ;

/* Variables and functions */
 int EFAULT ; 
 int ENOMEM ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  FUNC0 (void*,size_t,struct iov_iter*) ; 
 size_t FUNC1 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 void* FUNC3 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,void*,size_t) ; 
 int FUNC7 (int /*<<< orphan*/ ,void*,size_t) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *iocb,
				       struct iov_iter *from)
{
	struct file *filp = iocb->ki_filp;
	struct rpmsg_eptdev *eptdev = filp->private_data;
	size_t len = FUNC1(from);
	void *kbuf;
	int ret;

	kbuf = FUNC3(len, GFP_KERNEL);
	if (!kbuf)
		return -ENOMEM;

	if (!FUNC0(kbuf, len, from))
		return -EFAULT;

	if (FUNC4(&eptdev->ept_lock)) {
		ret = -ERESTARTSYS;
		goto free_kbuf;
	}

	if (!eptdev->ept) {
		ret = -EPIPE;
		goto unlock_eptdev;
	}

	if (filp->f_flags & O_NONBLOCK)
		ret = FUNC7(eptdev->ept, kbuf, len);
	else
		ret = FUNC6(eptdev->ept, kbuf, len);

unlock_eptdev:
	FUNC5(&eptdev->ept_lock);

free_kbuf:
	FUNC2(kbuf);
	return ret < 0 ? ret : len;
}