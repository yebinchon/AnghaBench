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
struct stm32_rproc {int dummy; } ;
struct rproc {int has_iommu; struct stm32_rproc* priv; } ;
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct device_node {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int FUNC1 (struct device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct platform_device*,struct rproc*) ; 
 int FUNC3 (struct rproc*) ; 
 struct rproc* FUNC4 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct rproc*) ; 
 int /*<<< orphan*/  st_rproc_ops ; 
 int /*<<< orphan*/  FUNC6 (struct rproc*) ; 
 int FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct rproc*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct stm32_rproc *ddata;
	struct device_node *np = dev->of_node;
	struct rproc *rproc;
	int ret;

	ret = FUNC1(dev, FUNC0(32));
	if (ret)
		return ret;

	rproc = FUNC4(dev, np->name, &st_rproc_ops, NULL, sizeof(*ddata));
	if (!rproc)
		return -ENOMEM;

	rproc->has_iommu = false;
	ddata = rproc->priv;

	FUNC2(pdev, rproc);

	ret = FUNC7(pdev);
	if (ret)
		goto free_rproc;

	FUNC8(rproc);

	ret = FUNC3(rproc);
	if (ret)
		goto free_mb;

	return 0;

free_mb:
	FUNC6(rproc);
free_rproc:
	FUNC5(rproc);
	return ret;
}