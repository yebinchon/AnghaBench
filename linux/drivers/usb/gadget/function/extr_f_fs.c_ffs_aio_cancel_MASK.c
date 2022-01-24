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
struct kiocb {TYPE_1__* ki_filp; struct ffs_io_data* private; } ;
struct ffs_io_data {scalar_t__ req; scalar_t__ ep; } ;
struct ffs_epfile {TYPE_2__* ffs; } ;
struct TYPE_4__ {int /*<<< orphan*/  eps_lock; } ;
struct TYPE_3__ {struct ffs_epfile* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct kiocb *kiocb)
{
	struct ffs_io_data *io_data = kiocb->private;
	struct ffs_epfile *epfile = kiocb->ki_filp->private_data;
	int value;

	FUNC0();

	FUNC2(&epfile->ffs->eps_lock);

	if (FUNC1(io_data && io_data->ep && io_data->req))
		value = FUNC4(io_data->ep, io_data->req);
	else
		value = -EINVAL;

	FUNC3(&epfile->ffs->eps_lock);

	return value;
}