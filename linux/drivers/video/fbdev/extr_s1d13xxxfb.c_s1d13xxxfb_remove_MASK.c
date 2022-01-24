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
struct s1d13xxxfb_par {scalar_t__ regs; } ;
struct platform_device {TYPE_1__* resource; } ;
struct fb_info {scalar_t__ screen_base; int /*<<< orphan*/  cmap; struct s1d13xxxfb_par* par; } ;
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;

/* Variables and functions */
 int /*<<< orphan*/  S1DREG_COM_DISP_MODE ; 
 int /*<<< orphan*/  S1DREG_PS_CNF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct fb_info* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct s1d13xxxfb_par*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct platform_device *pdev)
{
	struct fb_info *info = FUNC3(pdev);
	struct s1d13xxxfb_par *par = NULL;

	if (info) {
		par = info->par;
		if (par && par->regs) {
			/* disable output & enable powersave */
			FUNC5(par, S1DREG_COM_DISP_MODE, 0x00);
			FUNC5(par, S1DREG_PS_CNF, 0x11);
			FUNC2(par->regs);
		}

		FUNC0(&info->cmap);

		if (info->screen_base)
			FUNC2(info->screen_base);

		FUNC1(info);
	}

	FUNC4(pdev->resource[0].start,
			pdev->resource[0].end - pdev->resource[0].start +1);
	FUNC4(pdev->resource[1].start,
			pdev->resource[1].end - pdev->resource[1].start +1);
	return 0;
}