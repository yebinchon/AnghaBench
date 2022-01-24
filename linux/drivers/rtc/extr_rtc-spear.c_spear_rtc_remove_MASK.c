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
struct spear_rtc_config {int /*<<< orphan*/  clk; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct spear_rtc_config* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct spear_rtc_config*) ; 

__attribute__((used)) static int FUNC4(struct platform_device *pdev)
{
	struct spear_rtc_config *config = FUNC2(pdev);

	FUNC3(config);
	FUNC0(config->clk);
	FUNC1(&pdev->dev, 0);

	return 0;
}