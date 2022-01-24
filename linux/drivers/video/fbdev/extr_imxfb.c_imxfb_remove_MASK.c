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
struct resource {int /*<<< orphan*/  start; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct imxfb_info {int /*<<< orphan*/  regs; int /*<<< orphan*/  map_dma; int /*<<< orphan*/  map_size; int /*<<< orphan*/  pdev; } ;
struct imx_fb_platform_data {int /*<<< orphan*/  (* exit ) (int /*<<< orphan*/ ) ;} ;
struct fb_info {int /*<<< orphan*/  pseudo_palette; int /*<<< orphan*/  screen_buffer; int /*<<< orphan*/  cmap; struct imxfb_info* par; } ;

/* Variables and functions */
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 struct imx_fb_platform_data* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct imxfb_info*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct fb_info* FUNC7 (struct platform_device*) ; 
 struct resource* FUNC8 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct resource*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct fb_info*) ; 

__attribute__((used)) static int FUNC13(struct platform_device *pdev)
{
	struct imx_fb_platform_data *pdata;
	struct fb_info *info = FUNC7(pdev);
	struct imxfb_info *fbi = info->par;
	struct resource *res;

	res = FUNC8(pdev, IORESOURCE_MEM, 0);

	FUNC4(fbi);

	FUNC12(info);
	FUNC2(&info->cmap);
	pdata = FUNC0(&pdev->dev);
	if (pdata && pdata->exit)
		pdata->exit(fbi->pdev);
	FUNC1(&pdev->dev, fbi->map_size, info->screen_buffer,
		    fbi->map_dma);
	FUNC5(fbi->regs);
	FUNC9(res->start, FUNC10(res));
	FUNC6(info->pseudo_palette);
	FUNC3(info);

	return 0;
}