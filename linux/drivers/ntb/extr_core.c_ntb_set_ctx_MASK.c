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
struct ntb_dev {int /*<<< orphan*/  ctx_lock; struct ntb_ctx_ops const* ctx_ops; void* ctx; } ;
struct ntb_ctx_ops {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct ntb_ctx_ops const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct ntb_dev *ntb, void *ctx,
		const struct ntb_ctx_ops *ctx_ops)
{
	unsigned long irqflags;

	if (!FUNC0(ctx_ops))
		return -EINVAL;
	if (ntb->ctx_ops)
		return -EINVAL;

	FUNC1(&ntb->ctx_lock, irqflags);
	{
		ntb->ctx = ctx;
		ntb->ctx_ops = ctx_ops;
	}
	FUNC2(&ntb->ctx_lock, irqflags);

	return 0;
}