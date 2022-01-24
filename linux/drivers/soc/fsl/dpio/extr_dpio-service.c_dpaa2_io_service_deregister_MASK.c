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
struct dpaa2_io_notification_ctx {int /*<<< orphan*/  node; scalar_t__ id; scalar_t__ is_cdan; struct dpaa2_io* dpio_private; } ;
struct dpaa2_io {int /*<<< orphan*/  lock_notifications; int /*<<< orphan*/  swp; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct dpaa2_io *service,
				 struct dpaa2_io_notification_ctx *ctx,
				 struct device *dev)
{
	struct dpaa2_io *d = ctx->dpio_private;
	unsigned long irqflags;

	if (ctx->is_cdan)
		FUNC1(d->swp, (u16)ctx->id);

	FUNC2(&d->lock_notifications, irqflags);
	FUNC0(&ctx->node);
	FUNC3(&d->lock_notifications, irqflags);

}