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
struct device {struct device_node* of_node; } ;
struct platform_device {struct device dev; } ;
struct imx_media_dev {int /*<<< orphan*/  md; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  notifier; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct imx_media_dev*) ; 
 int FUNC1 (struct imx_media_dev*) ; 
 int FUNC2 (struct imx_media_dev*,struct device_node*) ; 
 struct imx_media_dev* FUNC3 (struct device*,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct imx_media_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  imx_media_notifier_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct device *dev = &pdev->dev;
	struct device_node *node = dev->of_node;
	struct imx_media_dev *imxmd;
	int ret;

	imxmd = FUNC3(dev, NULL);
	if (FUNC0(imxmd))
		return FUNC1(imxmd);

	ret = FUNC2(imxmd, node);
	if (ret) {
		FUNC8(&imxmd->v4l2_dev,
			 "add_of_subdevs failed with %d\n", ret);
		goto cleanup;
	}

	ret = FUNC4(imxmd, &imx_media_notifier_ops);
	if (ret)
		goto cleanup;

	return 0;

cleanup:
	FUNC6(&imxmd->notifier);
	FUNC7(&imxmd->v4l2_dev);
	FUNC5(&imxmd->md);

	return ret;
}