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
struct cdns3 {int /*<<< orphan*/  usb3_phy; int /*<<< orphan*/  usb2_phy; int /*<<< orphan*/  role_sw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cdns3*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct cdns3* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct cdns3 *cdns = FUNC3(pdev);

	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);
	FUNC6(&pdev->dev);
	FUNC0(cdns);
	FUNC7(cdns->role_sw);
	FUNC2(cdns->usb2_phy);
	FUNC2(cdns->usb3_phy);
	FUNC1(cdns->usb2_phy);
	FUNC1(cdns->usb3_phy);
	return 0;
}