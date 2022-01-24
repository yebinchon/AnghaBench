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
struct tmiofb_par {int /*<<< orphan*/  ccr; int /*<<< orphan*/  lcr; } ;
struct platform_device {int dummy; } ;
struct mfd_cell {int /*<<< orphan*/  (* disable ) (struct platform_device*) ;} ;
struct fb_info {int /*<<< orphan*/  screen_base; struct tmiofb_par* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct mfd_cell* FUNC3 (struct platform_device*) ; 
 struct fb_info* FUNC4 (struct platform_device*) ; 
 int FUNC5 (struct platform_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct fb_info*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	const struct mfd_cell *cell = FUNC3(dev);
	struct fb_info *info = FUNC4(dev);
	int irq = FUNC5(dev, 0);
	struct tmiofb_par *par;

	if (info) {
		par = info->par;
		FUNC8(info);

		FUNC7(dev);

		if (cell->disable)
			cell->disable(dev);

		FUNC1(irq, info);

		FUNC2(info->screen_base);
		FUNC2(par->lcr);
		FUNC2(par->ccr);

		FUNC0(info);
	}

	return 0;
}