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
struct fb_info {scalar_t__ screen_base; int /*<<< orphan*/  cmap; int /*<<< orphan*/  dev; struct broadsheetfb_par* par; } ;
struct broadsheetfb_par {TYPE_1__* board; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* cleanup ) (struct broadsheetfb_par*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  dev_attr_loadstore_waveform ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC5 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct broadsheetfb_par*) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 

__attribute__((used)) static int FUNC9(struct platform_device *dev)
{
	struct fb_info *info = FUNC5(dev);

	if (info) {
		struct broadsheetfb_par *par = info->par;

		FUNC0(info->dev, &dev_attr_loadstore_waveform);
		FUNC7(info);
		FUNC2(info);
		par->board->cleanup(par);
		FUNC1(&info->cmap);
		FUNC8((void *)info->screen_base);
		FUNC4(par->board->owner);
		FUNC3(info);
	}
	return 0;
}