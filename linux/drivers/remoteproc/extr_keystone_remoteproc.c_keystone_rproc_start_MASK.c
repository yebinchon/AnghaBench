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
struct rproc {int /*<<< orphan*/  bootaddr; struct keystone_rproc* priv; } ;
struct keystone_rproc {int /*<<< orphan*/  workqueue; int /*<<< orphan*/  irq_ring; int /*<<< orphan*/  irq_fault; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct keystone_rproc*) ; 
 int /*<<< orphan*/  handle_event ; 
 int FUNC5 (struct keystone_rproc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  keystone_rproc_exception_interrupt ; 
 int /*<<< orphan*/  keystone_rproc_vring_interrupt ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct keystone_rproc*) ; 

__attribute__((used)) static int FUNC7(struct rproc *rproc)
{
	struct keystone_rproc *ksproc = rproc->priv;
	int ret;

	FUNC0(&ksproc->workqueue, handle_event);

	ret = FUNC6(ksproc->irq_ring, keystone_rproc_vring_interrupt, 0,
			  FUNC2(ksproc->dev), ksproc);
	if (ret) {
		FUNC1(ksproc->dev, "failed to enable vring interrupt, ret = %d\n",
			ret);
		goto out;
	}

	ret = FUNC6(ksproc->irq_fault, keystone_rproc_exception_interrupt,
			  0, FUNC2(ksproc->dev), ksproc);
	if (ret) {
		FUNC1(ksproc->dev, "failed to enable exception interrupt, ret = %d\n",
			ret);
		goto free_vring_irq;
	}

	ret = FUNC5(ksproc, rproc->bootaddr);
	if (ret)
		goto free_exc_irq;

	return 0;

free_exc_irq:
	FUNC4(ksproc->irq_fault, ksproc);
free_vring_irq:
	FUNC4(ksproc->irq_ring, ksproc);
	FUNC3(&ksproc->workqueue);
out:
	return ret;
}