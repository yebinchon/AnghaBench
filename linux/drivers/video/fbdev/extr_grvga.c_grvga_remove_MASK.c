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
struct platform_device {int /*<<< orphan*/ * resource; int /*<<< orphan*/  dev; } ;
struct grvga_par {int /*<<< orphan*/  fb_alloced; int /*<<< orphan*/  regs; } ;
struct fb_info {scalar_t__ screen_base; int /*<<< orphan*/  cmap; struct grvga_par* par; } ;

/* Variables and functions */
 struct fb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fb_info*) ; 

__attribute__((used)) static int FUNC8(struct platform_device *device)
{
	struct fb_info *info = FUNC0(&device->dev);
	struct grvga_par *par;

	if (info) {
		par = info->par;
		FUNC7(info);
		FUNC1(&info->cmap);

		FUNC5(&device->resource[0], par->regs,
			   FUNC6(&device->resource[0]));

		if (!par->fb_alloced)
			FUNC3(info->screen_base);
		else
			FUNC4((void *)info->screen_base);

		FUNC2(info);
	}

	return 0;
}