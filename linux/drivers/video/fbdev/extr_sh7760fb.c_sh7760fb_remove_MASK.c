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
struct sh7760fb_par {scalar_t__ irq; TYPE_1__* ioarea; int /*<<< orphan*/  base; int /*<<< orphan*/  vsync; } ;
struct platform_device {int dummy; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct sh7760fb_par* par; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct fb_info *info = FUNC4(dev);
	struct sh7760fb_par *par = info->par;

	FUNC7(FB_BLANK_POWERDOWN, info);
	FUNC9(info);
	FUNC0(&info->cmap);
	FUNC8(info);
	if (par->irq >= 0)
		FUNC2(par->irq, &par->vsync);
	FUNC3(par->base);
	FUNC5(par->ioarea->start, FUNC6(par->ioarea));
	FUNC1(info);

	return 0;
}