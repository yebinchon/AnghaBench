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
struct ti_sci_resource {int dummy; } ;
struct platform_device {scalar_t__ id; int /*<<< orphan*/  dev; } ;
struct irq_domain {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 struct irq_domain* FUNC1 (struct device*) ; 
 int FUNC2 (struct irq_domain*,struct device*,int) ; 
 int FUNC3 (struct device*,struct ti_sci_resource*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct platform_device* FUNC5 (struct device*) ; 

int FUNC6(struct device *dev,
				      struct ti_sci_resource *res)
{
	struct platform_device *pdev = FUNC5(dev);
	struct irq_domain *msi_domain;
	int ret, nvec;

	msi_domain = FUNC1(dev);
	if (!msi_domain)
		return -EINVAL;

	if (pdev->id < 0)
		return -ENODEV;

	nvec = FUNC3(dev, res);
	if (nvec <= 0)
		return nvec;

	ret = FUNC2(msi_domain, dev, nvec);
	if (ret) {
		FUNC0(dev, "Failed to allocate IRQs %d\n", ret);
		goto cleanup;
	}

	return 0;

cleanup:
	FUNC4(&pdev->dev);
	return ret;
}