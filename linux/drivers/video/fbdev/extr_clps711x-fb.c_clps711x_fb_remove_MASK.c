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
struct fb_info {int /*<<< orphan*/  cmap; struct clps711x_fb_info* par; } ;
struct clps711x_fb_info {int /*<<< orphan*/  syscon; } ;

/* Variables and functions */
 int /*<<< orphan*/  SYSCON1_LCDEN ; 
 int /*<<< orphan*/  SYSCON_OFFSET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 struct fb_info* FUNC2 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct fb_info*) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct fb_info *info = FUNC2(pdev);
	struct clps711x_fb_info *cfb = info->par;

	FUNC3(cfb->syscon, SYSCON_OFFSET, SYSCON1_LCDEN, 0);

	FUNC4(info);
	FUNC0(&info->cmap);
	FUNC1(info);

	return 0;
}