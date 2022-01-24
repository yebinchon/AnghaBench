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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  u16 ;
struct dpaa2_io {int /*<<< orphan*/  lock_mgmt_cmd; int /*<<< orphan*/  swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 struct dpaa2_io* FUNC1 (struct dpaa2_io*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct dpaa2_io *d,
			     u16 bpid,
			     u64 *buffers,
			     unsigned int num_buffers)
{
	unsigned long irqflags;
	int err;

	d = FUNC1(d);
	if (!d)
		return -ENODEV;

	FUNC2(&d->lock_mgmt_cmd, irqflags);
	err = FUNC0(d->swp, bpid, buffers, num_buffers);
	FUNC3(&d->lock_mgmt_cmd, irqflags);

	return err;
}