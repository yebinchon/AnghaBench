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
struct ffs_io_data {int aio; int read; struct iov_iter data; struct ffs_io_data* to_free; int /*<<< orphan*/  mm; struct kiocb* kiocb; } ;
typedef  int /*<<< orphan*/  ssize_t ;
typedef  int /*<<< orphan*/  io_data ;
struct TYPE_2__ {int /*<<< orphan*/  mm; } ;

/* Variables and functions */
 int /*<<< orphan*/  EIOCBQUEUED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 TYPE_1__* current ; 
 struct ffs_io_data* FUNC1 (struct iov_iter*,struct iov_iter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ffs_aio_cancel ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct ffs_io_data*) ; 
 int /*<<< orphan*/  FUNC3 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC4 (struct ffs_io_data*) ; 
 int /*<<< orphan*/  FUNC5 (struct kiocb*,int /*<<< orphan*/ ) ; 
 struct ffs_io_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ffs_io_data*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static ssize_t FUNC9(struct kiocb *kiocb, struct iov_iter *to)
{
	struct ffs_io_data io_data, *p = &io_data;
	ssize_t res;

	FUNC0();

	if (!FUNC3(kiocb)) {
		p = FUNC6(sizeof(io_data), GFP_KERNEL);
		if (FUNC8(!p))
			return -ENOMEM;
		p->aio = true;
	} else {
		FUNC7(p, 0, sizeof(*p));
		p->aio = false;
	}

	p->read = true;
	p->kiocb = kiocb;
	if (p->aio) {
		p->to_free = FUNC1(&p->data, to, GFP_KERNEL);
		if (!p->to_free) {
			FUNC4(p);
			return -ENOMEM;
		}
	} else {
		p->data = *to;
		p->to_free = NULL;
	}
	p->mm = current->mm;

	kiocb->private = p;

	if (p->aio)
		FUNC5(kiocb, ffs_aio_cancel);

	res = FUNC2(kiocb->ki_filp, p);
	if (res == -EIOCBQUEUED)
		return res;

	if (p->aio) {
		FUNC4(p->to_free);
		FUNC4(p);
	} else {
		*to = p->data;
	}
	return res;
}