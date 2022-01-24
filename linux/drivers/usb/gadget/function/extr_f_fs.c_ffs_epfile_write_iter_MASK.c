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
struct kiocb {int /*<<< orphan*/  ki_filp; struct ffs_io_data* private; } ;
struct iov_iter {int dummy; } ;
struct ffs_io_data {int aio; int read; struct iov_iter data; int /*<<< orphan*/  mm; struct kiocb* kiocb; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  io_data ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  ffs_aio_cancel ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ffs_io_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC3 (struct ffs_io_data*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,int /*<<< orphan*/ ) ; 
 struct ffs_io_data* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ffs_io_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static ssize_t FUNC8(struct kiocb *kiocb, struct iov_iter *from)
{
	struct ffs_io_data io_data, *p = &io_data;
	ssize_t res;

	FUNC0();

	if (!FUNC2(kiocb)) {
		p = FUNC5(sizeof(io_data), GFP_KERNEL);
		if (FUNC7(!p))
			return -ENOMEM;
		p->aio = true;
	} else {
		FUNC6(p, 0, sizeof(*p));
		p->aio = false;
	}

	p->read = false;
	p->kiocb = kiocb;
	p->data = *from;
	p->mm = current->mm;

	kiocb->private = p;

	if (p->aio)
		FUNC4(kiocb, ffs_aio_cancel);

	res = FUNC1(kiocb->ki_filp, p);
	if (res == -EIOCBQUEUED)
		return res;
	if (p->aio)
		FUNC3(p);
	else
		*from = p->data;
	return res;
}