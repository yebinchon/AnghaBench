#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fsl_usb2_platform_data {int /*<<< orphan*/  (* exit ) (struct platform_device*) ;} ;
struct TYPE_5__ {TYPE_2__* otg; } ;
struct TYPE_6__ {TYPE_1__ phy; int /*<<< orphan*/  irq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FSL_OTG_MAJOR ; 
 int /*<<< orphan*/  FSL_OTG_NAME ; 
 struct fsl_usb2_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_2__* fsl_otg_dev ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ usb_dr_regs ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct fsl_usb2_platform_data *pdata = FUNC0(&pdev->dev);

	FUNC7(&fsl_otg_dev->phy);
	FUNC1(fsl_otg_dev->irq, fsl_otg_dev);

	FUNC3((void *)usb_dr_regs);

	FUNC2();
	FUNC4(fsl_otg_dev->phy.otg);
	FUNC4(fsl_otg_dev);

	FUNC6(FSL_OTG_MAJOR, FSL_OTG_NAME);

	if (pdata->exit)
		pdata->exit(pdev);

	return 0;
}