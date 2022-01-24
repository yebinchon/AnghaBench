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
struct usbmisc_ops {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct of_device_id {scalar_t__ data; } ;
struct imx_usbmisc {struct usbmisc_ops const* ops; int /*<<< orphan*/  base; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct imx_usbmisc* FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct imx_usbmisc*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  usbmisc_imx_dt_ids ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct imx_usbmisc *data;
	const struct of_device_id *of_id;

	of_id = FUNC4(usbmisc_imx_dt_ids, &pdev->dev);
	if (!of_id)
		return -ENODEV;

	data = FUNC2(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC6(&data->lock);

	data->base = FUNC3(pdev, 0);
	if (FUNC0(data->base))
		return FUNC1(data->base);

	data->ops = (const struct usbmisc_ops *)of_id->data;
	FUNC5(pdev, data);

	return 0;
}