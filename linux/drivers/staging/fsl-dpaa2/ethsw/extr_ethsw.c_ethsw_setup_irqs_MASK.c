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
typedef  int /*<<< orphan*/  u32 ;
struct fsl_mc_device_irq {TYPE_2__* msi_desc; } ;
struct TYPE_3__ {scalar_t__ irq_count; } ;
struct device {int dummy; } ;
struct fsl_mc_device {struct fsl_mc_device_irq** irqs; TYPE_1__ obj_desc; struct device dev; } ;
struct ethsw_core {int /*<<< orphan*/  dpsw_handle; int /*<<< orphan*/  mc_io; } ;
struct TYPE_4__ {int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  DPSW_IRQ_EVENT_LINK_CHANGED ; 
 size_t DPSW_IRQ_INDEX_IF ; 
 scalar_t__ DPSW_IRQ_NUM ; 
 int EINVAL ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_ONESHOT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,...) ; 
 struct ethsw_core* FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC5 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct device*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ethsw_irq0_handler_thread ; 
 int FUNC8 (struct fsl_mc_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct fsl_mc_device*) ; 

__attribute__((used)) static int FUNC10(struct fsl_mc_device *sw_dev)
{
	struct device *dev = &sw_dev->dev;
	struct ethsw_core *ethsw = FUNC2(dev);
	u32 mask = DPSW_IRQ_EVENT_LINK_CHANGED;
	struct fsl_mc_device_irq *irq;
	int err;

	err = FUNC8(sw_dev);
	if (err) {
		FUNC1(dev, "MC irqs allocation failed\n");
		return err;
	}

	if (FUNC0(sw_dev->obj_desc.irq_count != DPSW_IRQ_NUM)) {
		err = -EINVAL;
		goto free_irq;
	}

	err = FUNC6(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  DPSW_IRQ_INDEX_IF, 0);
	if (err) {
		FUNC1(dev, "dpsw_set_irq_enable err %d\n", err);
		goto free_irq;
	}

	irq = sw_dev->irqs[DPSW_IRQ_INDEX_IF];

	err = FUNC5(dev, irq->msi_desc->irq,
					NULL,
					ethsw_irq0_handler_thread,
					IRQF_NO_SUSPEND | IRQF_ONESHOT,
					FUNC3(dev), dev);
	if (err) {
		FUNC1(dev, "devm_request_threaded_irq(): %d\n", err);
		goto free_irq;
	}

	err = FUNC7(ethsw->mc_io, 0, ethsw->dpsw_handle,
				DPSW_IRQ_INDEX_IF, mask);
	if (err) {
		FUNC1(dev, "dpsw_set_irq_mask(): %d\n", err);
		goto free_devm_irq;
	}

	err = FUNC6(ethsw->mc_io, 0, ethsw->dpsw_handle,
				  DPSW_IRQ_INDEX_IF, 1);
	if (err) {
		FUNC1(dev, "dpsw_set_irq_enable(): %d\n", err);
		goto free_devm_irq;
	}

	return 0;

free_devm_irq:
	FUNC4(dev, irq->msi_desc->irq, dev);
free_irq:
	FUNC9(sw_dev);
	return err;
}