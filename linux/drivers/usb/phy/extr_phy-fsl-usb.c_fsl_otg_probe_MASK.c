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
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FSL_OTG_MAJOR ; 
 int /*<<< orphan*/  FSL_OTG_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  otg_fops ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct platform_device*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	int ret;

	if (!FUNC1(&pdev->dev))
		return -ENODEV;

	/* configure the OTG */
	ret = FUNC2(pdev);
	if (ret) {
		FUNC0(&pdev->dev, "Couldn't configure OTG module\n");
		return ret;
	}

	/* start OTG */
	ret = FUNC4(pdev);
	if (ret) {
		FUNC0(&pdev->dev, "Can't init FSL OTG device\n");
		return ret;
	}

	ret = FUNC3(FSL_OTG_MAJOR, FSL_OTG_NAME, &otg_fops);
	if (ret) {
		FUNC0(&pdev->dev, "unable to register FSL OTG device\n");
		return ret;
	}

	return ret;
}