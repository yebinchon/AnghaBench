#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int of_reset_n_cells; int /*<<< orphan*/  of_xlate; scalar_t__ of_node; int /*<<< orphan*/  owner; int /*<<< orphan*/ * ops; } ;
struct ti_sci_reset_data {TYPE_1__ rcdev; int /*<<< orphan*/  idr; TYPE_2__* dev; int /*<<< orphan*/  sci; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct ti_sci_reset_data* FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct ti_sci_reset_data*) ; 
 int FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  ti_sci_reset_of_xlate ; 
 int /*<<< orphan*/  ti_sci_reset_ops ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct ti_sci_reset_data *data;

	if (!pdev->dev.of_node)
		return -ENODEV;

	data = FUNC2(&pdev->dev, sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->sci = FUNC3(&pdev->dev);
	if (FUNC0(data->sci))
		return FUNC1(data->sci);

	data->rcdev.ops = &ti_sci_reset_ops;
	data->rcdev.owner = THIS_MODULE;
	data->rcdev.of_node = pdev->dev.of_node;
	data->rcdev.of_reset_n_cells = 2;
	data->rcdev.of_xlate = ti_sci_reset_of_xlate;
	data->dev = &pdev->dev;
	FUNC4(&data->idr);

	FUNC5(pdev, data);

	return FUNC6(&data->rcdev);
}