#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  release; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * bus; } ;
struct ntb_dev {TYPE_2__ dev; int /*<<< orphan*/  ctx_lock; int /*<<< orphan*/ * ctx_ops; int /*<<< orphan*/ * ctx; TYPE_1__* pdev; int /*<<< orphan*/  released; int /*<<< orphan*/  ops; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ntb_bus ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ntb_dev_release ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(struct ntb_dev *ntb)
{
	if (!ntb)
		return -EINVAL;
	if (!ntb->pdev)
		return -EINVAL;
	if (!ntb->ops)
		return -EINVAL;
	if (!FUNC3(ntb->ops))
		return -EINVAL;

	FUNC2(&ntb->released);

	ntb->dev.bus = &ntb_bus;
	ntb->dev.parent = &ntb->pdev->dev;
	ntb->dev.release = ntb_dev_release;
	FUNC0(&ntb->dev, "%s", FUNC4(ntb->pdev));

	ntb->ctx = NULL;
	ntb->ctx_ops = NULL;
	FUNC5(&ntb->ctx_lock);

	return FUNC1(&ntb->dev);
}