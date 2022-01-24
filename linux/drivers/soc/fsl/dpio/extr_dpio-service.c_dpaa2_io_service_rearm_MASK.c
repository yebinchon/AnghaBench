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
typedef  int /*<<< orphan*/  u16 ;
struct dpaa2_io_notification_ctx {scalar_t__ id; scalar_t__ is_cdan; int /*<<< orphan*/  desired_cpu; } ;
struct dpaa2_io {int /*<<< orphan*/  lock_mgmt_cmd; int /*<<< orphan*/  swp; } ;

/* Variables and functions */
 int ENODEV ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct dpaa2_io* FUNC2 (struct dpaa2_io*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (struct dpaa2_io*) ; 

int FUNC6(struct dpaa2_io *d,
			   struct dpaa2_io_notification_ctx *ctx)
{
	unsigned long irqflags;
	int err;

	d = FUNC2(d, ctx->desired_cpu);
	if (!FUNC5(d))
		return -ENODEV;

	FUNC3(&d->lock_mgmt_cmd, irqflags);
	if (ctx->is_cdan)
		err = FUNC0(d->swp, (u16)ctx->id);
	else
		err = FUNC1(d->swp, ctx->id);
	FUNC4(&d->lock_mgmt_cmd, irqflags);

	return err;
}