#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct resource {int dummy; } ;
struct TYPE_3__ {void* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct of_device_id {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 int /*<<< orphan*/  high_mpp_base ; 
 int /*<<< orphan*/  mpp_base ; 
 int FUNC3 (struct platform_device*) ; 
 struct of_device_id* FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  orion_pinctrl_of_match ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	const struct of_device_id *match =
		FUNC4(orion_pinctrl_of_match, &pdev->dev);
	struct resource *res;

	pdev->dev.platform_data = (void*)match->data;

	res = FUNC5(pdev, IORESOURCE_MEM, 0);
	mpp_base = FUNC2(&pdev->dev, res);
	if (FUNC0(mpp_base))
		return FUNC1(mpp_base);

	res = FUNC5(pdev, IORESOURCE_MEM, 1);
	high_mpp_base = FUNC2(&pdev->dev, res);
	if (FUNC0(high_mpp_base))
		return FUNC1(high_mpp_base);

	return FUNC3(pdev);
}