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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct ci_hdrc_imx_data {scalar_t__ hsic_pad_regulator; int /*<<< orphan*/  pm_qos_req; TYPE_1__* plat_data; scalar_t__ ci_pdev; int /*<<< orphan*/  phy; scalar_t__ override_phy_control; scalar_t__ supports_runtime_pm; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int CI_HDRC_PMQOS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct ci_hdrc_imx_data* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	struct ci_hdrc_imx_data *data = FUNC2(pdev);

	if (data->supports_runtime_pm) {
		FUNC5(&pdev->dev);
		FUNC4(&pdev->dev);
		FUNC6(&pdev->dev);
	}
	if (data->ci_pdev)
		FUNC0(data->ci_pdev);
	if (data->override_phy_control)
		FUNC8(data->phy);
	if (data->ci_pdev) {
		FUNC1(&pdev->dev);
		if (data->plat_data->flags & CI_HDRC_PMQOS)
			FUNC3(&data->pm_qos_req);
		if (data->hsic_pad_regulator)
			FUNC7(data->hsic_pad_regulator);
	}

	return 0;
}