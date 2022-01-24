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
struct device {int dummy; } ;
struct platform_device {int /*<<< orphan*/  num_resources; int /*<<< orphan*/  resource; struct device dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct ci_hdrc_usb2_priv {int /*<<< orphan*/  clk; int /*<<< orphan*/  ci_pdev; } ;
struct ci_hdrc_platform_data {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int EPROBE_DEFER ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct ci_hdrc_platform_data ci_default_pdata ; 
 int /*<<< orphan*/  FUNC2 (struct device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ci_hdrc_platform_data*) ; 
 int /*<<< orphan*/  ci_hdrc_usb2_of_match ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct device*,char*,int) ; 
 struct ci_hdrc_platform_data* FUNC6 (struct device*) ; 
 int /*<<< orphan*/  FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int /*<<< orphan*/ *) ; 
 struct ci_hdrc_platform_data* FUNC9 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct ci_hdrc_usb2_priv* FUNC10 (struct device*,int,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC11 (int /*<<< orphan*/ ,struct device*) ; 
 int /*<<< orphan*/  FUNC12 (struct platform_device*,struct ci_hdrc_usb2_priv*) ; 
 int /*<<< orphan*/  FUNC13 (struct device*) ; 
 int /*<<< orphan*/  FUNC14 (struct device*) ; 

__attribute__((used)) static int FUNC15(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct ci_hdrc_usb2_priv *priv;
	struct ci_hdrc_platform_data *ci_pdata = FUNC6(dev);
	int ret;
	const struct of_device_id *match;

	if (!ci_pdata) {
		ci_pdata = FUNC9(dev, sizeof(*ci_pdata), GFP_KERNEL);
		if (!ci_pdata)
			return -ENOMEM;
		*ci_pdata = ci_default_pdata;	/* struct copy */
	}

	match = FUNC11(ci_hdrc_usb2_of_match, &pdev->dev);
	if (match && match->data) {
		/* struct copy */
		*ci_pdata = *(struct ci_hdrc_platform_data *)match->data;
	}

	priv = FUNC10(dev, sizeof(*priv), GFP_KERNEL);
	if (!priv)
		return -ENOMEM;

	priv->clk = FUNC8(dev, NULL);
	if (!FUNC0(priv->clk)) {
		ret = FUNC4(priv->clk);
		if (ret) {
			FUNC5(dev, "failed to enable the clock: %d\n", ret);
			return ret;
		}
	}

	ci_pdata->name = FUNC7(dev);

	priv->ci_pdev = FUNC2(dev, pdev->resource,
					   pdev->num_resources, ci_pdata);
	if (FUNC0(priv->ci_pdev)) {
		ret = FUNC1(priv->ci_pdev);
		if (ret != -EPROBE_DEFER)
			FUNC5(dev,
				"failed to register ci_hdrc platform device: %d\n",
				ret);
		goto clk_err;
	}

	FUNC12(pdev, priv);

	FUNC14(dev);
	FUNC13(dev);

	return 0;

clk_err:
	if (!FUNC0(priv->clk))
		FUNC3(priv->clk);
	return ret;
}