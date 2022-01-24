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
struct TYPE_2__ {int /*<<< orphan*/  of_node; int /*<<< orphan*/  nr_resets; int /*<<< orphan*/ * ops; int /*<<< orphan*/  owner; } ;
struct qcom_aoss_reset_data {TYPE_1__ rcdev; int /*<<< orphan*/  base; struct qcom_aoss_desc const* desc; } ;
struct qcom_aoss_desc {int /*<<< orphan*/  num_resets; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  FUNC2 (struct device*,struct resource*) ; 
 struct qcom_aoss_reset_data* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct device*,TYPE_1__*) ; 
 struct qcom_aoss_desc* FUNC5 (struct device*) ; 
 struct resource* FUNC6 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qcom_aoss_reset_ops ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct qcom_aoss_reset_data *data;
	struct device *dev = &pdev->dev;
	const struct qcom_aoss_desc *desc;
	struct resource *res;

	desc = FUNC5(dev);
	if (!desc)
		return -EINVAL;

	data = FUNC3(dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->desc = desc;
	res = FUNC6(pdev, IORESOURCE_MEM, 0);
	data->base = FUNC2(dev, res);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	data->rcdev.owner = THIS_MODULE;
	data->rcdev.ops = &qcom_aoss_reset_ops;
	data->rcdev.nr_resets = desc->num_resets;
	data->rcdev.of_node = dev->of_node;

	return FUNC4(dev, &data->rcdev);
}