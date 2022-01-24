#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  batch_cache; int /*<<< orphan*/  cache; int /*<<< orphan*/  cache_lock; } ;
struct rsc_drv {TYPE_2__ client; TYPE_1__* tcs; scalar_t__ name; int /*<<< orphan*/  id; int /*<<< orphan*/  tcs_in_use; int /*<<< orphan*/  lock; } ;
struct TYPE_11__ {struct device_node* of_node; } ;
struct platform_device {TYPE_3__ dev; } ;
struct device_node {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  mask; } ;

/* Variables and functions */
 size_t ACTIVE_TCS ; 
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int IRQF_NO_SUSPEND ; 
 int IRQF_TRIGGER_HIGH ; 
 int /*<<< orphan*/  MAX_TCS_NR ; 
 int /*<<< orphan*/  RSC_DRV_IRQ_ENABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct rsc_drv*) ; 
 struct rsc_drv* FUNC6 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (TYPE_3__*) ; 
 int FUNC8 (TYPE_3__*,int,int /*<<< orphan*/ ,int,scalar_t__,struct rsc_drv*) ; 
 scalar_t__ FUNC9 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int FUNC12 (struct platform_device*,struct rsc_drv*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tcs_tx_done ; 
 int /*<<< orphan*/  FUNC14 (struct rsc_drv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device_node *dn = pdev->dev.of_node;
	struct rsc_drv *drv;
	int ret, irq;

	/*
	 * Even though RPMh doesn't directly use cmd-db, all of its children
	 * do. To avoid adding this check to our children we'll do it now.
	 */
	ret = FUNC2();
	if (ret) {
		if (ret != -EPROBE_DEFER)
			FUNC3(&pdev->dev, "Command DB not available (%d)\n",
									ret);
		return ret;
	}

	drv = FUNC6(&pdev->dev, sizeof(*drv), GFP_KERNEL);
	if (!drv)
		return -ENOMEM;

	ret = FUNC10(dn, "qcom,drv-id", &drv->id);
	if (ret)
		return ret;

	drv->name = FUNC9(dn, "label", NULL);
	if (!drv->name)
		drv->name = FUNC4(&pdev->dev);

	ret = FUNC12(pdev, drv);
	if (ret)
		return ret;

	FUNC13(&drv->lock);
	FUNC1(drv->tcs_in_use, MAX_TCS_NR);

	irq = FUNC11(pdev, drv->id);
	if (irq < 0)
		return irq;

	ret = FUNC8(&pdev->dev, irq, tcs_tx_done,
			       IRQF_TRIGGER_HIGH | IRQF_NO_SUSPEND,
			       drv->name, drv);
	if (ret)
		return ret;

	/* Enable the active TCS to send requests immediately */
	FUNC14(drv, RSC_DRV_IRQ_ENABLE, 0, drv->tcs[ACTIVE_TCS].mask);

	FUNC13(&drv->client.cache_lock);
	FUNC0(&drv->client.cache);
	FUNC0(&drv->client.batch_cache);

	FUNC5(&pdev->dev, drv);

	return FUNC7(&pdev->dev);
}