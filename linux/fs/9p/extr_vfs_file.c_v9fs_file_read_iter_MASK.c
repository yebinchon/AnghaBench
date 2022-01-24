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
struct p9_fid {int dummy; } ;
struct kiocb {int ki_pos; TYPE_1__* ki_filp; } ;
struct iov_iter {int dummy; } ;
typedef  int ssize_t ;
struct TYPE_2__ {struct p9_fid* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_VFS ; 
 int /*<<< orphan*/  FUNC0 (struct iov_iter*) ; 
 int FUNC1 (struct p9_fid*,int,struct iov_iter*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static ssize_t
FUNC3(struct kiocb *iocb, struct iov_iter *to)
{
	struct p9_fid *fid = iocb->ki_filp->private_data;
	int ret, err = 0;

	FUNC2(P9_DEBUG_VFS, "count %zu offset %lld\n",
		 FUNC0(to), iocb->ki_pos);

	ret = FUNC1(fid, iocb->ki_pos, to, &err);
	if (!ret)
		return err;

	iocb->ki_pos += ret;
	return ret;
}