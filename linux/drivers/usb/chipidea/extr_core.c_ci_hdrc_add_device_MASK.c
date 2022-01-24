#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_2__ {struct device* parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device {int dummy; } ;
struct ci_hdrc_platform_data {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct platform_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC1 (struct device*,struct ci_hdrc_platform_data*) ; 
 int /*<<< orphan*/  ci_ida ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,struct ci_hdrc_platform_data*,int) ; 
 int FUNC6 (struct platform_device*,struct resource*,int) ; 
 struct platform_device* FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*) ; 

struct platform_device *FUNC9(struct device *dev,
			struct resource *res, int nres,
			struct ci_hdrc_platform_data *platdata)
{
	struct platform_device *pdev;
	int id, ret;

	ret = FUNC1(dev, platdata);
	if (ret)
		return FUNC0(ret);

	id = FUNC2(&ci_ida, 0, 0, GFP_KERNEL);
	if (id < 0)
		return FUNC0(id);

	pdev = FUNC7("ci_hdrc", id);
	if (!pdev) {
		ret = -ENOMEM;
		goto put_id;
	}

	pdev->dev.parent = dev;

	ret = FUNC6(pdev, res, nres);
	if (ret)
		goto err;

	ret = FUNC5(pdev, platdata, sizeof(*platdata));
	if (ret)
		goto err;

	ret = FUNC4(pdev);
	if (ret)
		goto err;

	return pdev;

err:
	FUNC8(pdev);
put_id:
	FUNC3(&ci_ida, id);
	return FUNC0(ret);
}