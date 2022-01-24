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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct fb_info {int /*<<< orphan*/  cmap; struct da8xx_fb_par* par; } ;
struct da8xx_fb_par {scalar_t__ lcd_supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  DA8XX_FRAME_WAIT ; 
 int /*<<< orphan*/  LCD_DMA_CTRL_REG ; 
 int /*<<< orphan*/  LCD_RASTER_CTRL_REG ; 
 struct fb_info* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fb_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct da8xx_fb_par*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (struct fb_info*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *dev)
{
	struct fb_info *info = FUNC0(&dev->dev);
	struct da8xx_fb_par *par = info->par;
	int ret;

#ifdef CONFIG_CPU_FREQ
	lcd_da8xx_cpufreq_deregister(par);
#endif
	if (par->lcd_supply) {
		ret = FUNC8(par->lcd_supply);
		if (ret)
			return ret;
	}

	FUNC4(DA8XX_FRAME_WAIT);
	FUNC5(0, LCD_RASTER_CTRL_REG);

	/* disable DMA  */
	FUNC5(0, LCD_DMA_CTRL_REG);

	FUNC9(info);
	FUNC1(&info->cmap);
	FUNC7(&dev->dev);
	FUNC6(&dev->dev);
	FUNC2(info);

	return 0;
}