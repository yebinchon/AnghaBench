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
struct da8xx_fb_par {unsigned int lcdc_clk_rate; int /*<<< orphan*/  lcdc_clk; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  LCD_CLK_ENABLE_REG ; 
 int /*<<< orphan*/  LCD_CTRL_REG ; 
 int LCD_RASTER_MODE ; 
 int LCD_V2_CORE_CLK_EN ; 
 int LCD_V2_DMA_CLK_EN ; 
 int LCD_V2_LIDD_CLK_EN ; 
 scalar_t__ LCD_VERSION_2 ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 scalar_t__ lcd_revision ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct da8xx_fb_par *par,
					      unsigned lcdc_clk_div,
					      unsigned lcdc_clk_rate)
{
	int ret;

	if (par->lcdc_clk_rate != lcdc_clk_rate) {
		ret = FUNC2(par->lcdc_clk, lcdc_clk_rate);
		if (ret) {
			FUNC3(par->dev,
				"unable to set clock rate at %u\n",
				lcdc_clk_rate);
			return ret;
		}
		par->lcdc_clk_rate = FUNC1(par->lcdc_clk);
	}

	/* Configure the LCD clock divisor. */
	FUNC4(FUNC0(lcdc_clk_div) |
			(LCD_RASTER_MODE & 0x1), LCD_CTRL_REG);

	if (lcd_revision == LCD_VERSION_2)
		FUNC4(LCD_V2_DMA_CLK_EN | LCD_V2_LIDD_CLK_EN |
				LCD_V2_CORE_CLK_EN, LCD_CLK_ENABLE_REG);

	return 0;
}