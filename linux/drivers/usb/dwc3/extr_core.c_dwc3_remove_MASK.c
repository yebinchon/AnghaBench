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
struct dwc3 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC1 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC2 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC3 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC4 (struct dwc3*) ; 
 int /*<<< orphan*/  FUNC5 (struct dwc3*) ; 
 struct dwc3* FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct dwc3	*dwc = FUNC6(pdev);

	FUNC9(&pdev->dev);

	FUNC2(dwc);
	FUNC1(dwc);

	FUNC0(dwc);
	FUNC5(dwc);

	FUNC10(&pdev->dev);
	FUNC7(&pdev->dev);
	FUNC8(&pdev->dev);

	FUNC3(dwc);
	FUNC4(dwc);

	return 0;
}