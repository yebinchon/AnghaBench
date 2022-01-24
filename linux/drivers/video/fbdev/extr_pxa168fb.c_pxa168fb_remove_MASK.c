#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct pxa168fb_info {int /*<<< orphan*/  clk; int /*<<< orphan*/  dev; scalar_t__ reg_base; struct fb_info* info; } ;
struct platform_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  smem_start; int /*<<< orphan*/  smem_len; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct fb_info {TYPE_1__ fix; int /*<<< orphan*/  screen_base; TYPE_2__ cmap; } ;

/* Variables and functions */
 unsigned int CFG_GRA_ENA_MASK ; 
 unsigned int FUNC0 (int) ; 
 scalar_t__ LCD_SPU_DMA_CTRL0 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SPU_IRQ_ENA ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (struct fb_info*) ; 
 struct pxa168fb_info* FUNC6 (struct platform_device*) ; 
 int FUNC7 (struct platform_device*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct pxa168fb_info *fbi = FUNC6(pdev);
	struct fb_info *info;
	int irq;
	unsigned int data;

	if (!fbi)
		return 0;

	/* disable DMA transfer */
	data = FUNC8(fbi->reg_base + LCD_SPU_DMA_CTRL0);
	data &= ~CFG_GRA_ENA_MASK;
	FUNC10(data, fbi->reg_base + LCD_SPU_DMA_CTRL0);

	info = fbi->info;

	FUNC9(info);

	FUNC10(FUNC0(0x0), fbi->reg_base + SPU_IRQ_ENA);

	if (info->cmap.len)
		FUNC4(&info->cmap);

	irq = FUNC7(pdev, 0);

	FUNC3(fbi->dev, FUNC1(info->fix.smem_len),
		    info->screen_base, info->fix.smem_start);

	FUNC2(fbi->clk);

	FUNC5(info);

	return 0;
}