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
struct platform_device {int dummy; } ;
struct mtk_disp_pwm {int /*<<< orphan*/  clk_main; int /*<<< orphan*/  clk_mm; int /*<<< orphan*/  chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct mtk_disp_pwm* FUNC1 (struct platform_device*) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	struct mtk_disp_pwm *mdp = FUNC1(pdev);
	int ret;

	ret = FUNC2(&mdp->chip);
	FUNC0(mdp->clk_mm);
	FUNC0(mdp->clk_main);

	return ret;
}