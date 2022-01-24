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
struct dim2_hdm {scalar_t__ clk_speed; int /*<<< orphan*/  clk; int /*<<< orphan*/  clk_pll; } ;

/* Variables and functions */
 scalar_t__ CLK_2048FS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct dim2_hdm* FUNC1 (struct platform_device*) ; 

__attribute__((used)) static void FUNC2(struct platform_device *pdev)
{
	struct dim2_hdm *dev = FUNC1(pdev);

	if (dev->clk_speed >= CLK_2048FS)
		FUNC0(dev->clk_pll);

	FUNC0(dev->clk);
}