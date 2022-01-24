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
struct platform_device {int dummy; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct ep93xx_fbi* par; } ;
struct ep93xx_fbi {TYPE_1__* mach_info; int /*<<< orphan*/  clk; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* teardown ) (struct platform_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct fb_info*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct fb_info *info = FUNC4(pdev);
	struct ep93xx_fbi *fbi = info->par;

	FUNC6(info);
	FUNC0(fbi->clk);
	FUNC1(info);
	FUNC2(&info->cmap);

	if (fbi->mach_info->teardown)
		fbi->mach_info->teardown(pdev);

	FUNC3(info);

	return 0;
}