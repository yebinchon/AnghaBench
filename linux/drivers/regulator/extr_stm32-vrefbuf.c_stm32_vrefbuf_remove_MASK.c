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
struct stm32_vrefbuf {int /*<<< orphan*/  clk; } ;
struct regulator_dev {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct regulator_dev* FUNC1 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 struct stm32_vrefbuf* FUNC6 (struct regulator_dev*) ; 
 int /*<<< orphan*/  FUNC7 (struct regulator_dev*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *pdev)
{
	struct regulator_dev *rdev = FUNC1(pdev);
	struct stm32_vrefbuf *priv = FUNC6(rdev);

	FUNC3(&pdev->dev);
	FUNC7(rdev);
	FUNC0(priv->clk);
	FUNC2(&pdev->dev);
	FUNC5(&pdev->dev);
	FUNC4(&pdev->dev);

	return 0;
}